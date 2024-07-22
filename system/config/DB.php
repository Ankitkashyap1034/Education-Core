<?php
	class DB{
		
		private $table;
		private $joins;
		private $result;
		private $conditions;
		private $orderBy;
		private $limit;
		private $parameters;
		private $whereInConditions;

		function __construct(
			$table = NULL,
			$joins = NULL,
			$result = NULL,
			$conditions = NULL,
			$orderBy = NULL,
			$limit = NULL
		) {
			$this->table = $table;
			$this->joins = $joins;
			$this->result = $result;
			$this->conditions = $conditions;
			$this->orderBy = $orderBy;
			$this->limit = $limit;
			$this->parameters = [];
			$this->whereInConditions = [];
		}

		public static function table($table){
			$instance = new self();
			$instance->table = $table;
			return $instance;
		}

		public function leftJoin($joinTable, $joinCondition){
			$this->joins[] = ['LEFT', $joinTable, $joinCondition];
			return $this;
		}

		public function rightJoin($joinTable, $joinCondition){
			$this->joins[] = ['RIGHT', $joinTable, $joinCondition];
			return $this;
		}

		public function innerJoin($joinTable, $joinCondition){
			$this->joins[] = ['INNER', $joinTable, $joinCondition];
			return $this;
		}

		public function toArray(){
			return $this->result;
		}

		public function toObject(){
			return (object)$this->result;
		}

		public function where($column, $operator, $value) {
			$this->conditions[] = "$column $operator '$value'";
			return $this;
		}

		public function whereIn($column, $values) {
			if (!is_array($values)) {
				throw new \InvalidArgumentException('whereIn method expects an array of values.');
			}
			if (empty($values)) {
				throw new \InvalidArgumentException('whereIn method expects a non-empty array of values.');
			}

			$this->whereInConditions[] = [$column, $values];
			return $this;
		}

		public function limit($limit) {
			$this->limit = $limit;
			return $this;
		}

		public function orderBy($column, $order) {
			$this->orderBy = " ORDER BY " . $column ." ". $order;
			return $this;
		}

		public function insert($dataValues){
		    $columns = implode(', ', array_keys($dataValues));
		    $values = ':' . implode(', :', array_keys($dataValues));
		    $sql = "INSERT INTO ".DB_PREFIX."{$this->table} ($columns) VALUES ($values)";
		    $statement = $GLOBALS['pdo']->prepare($sql);
		    foreach ($dataValues as $column => $value) {
		        $statement->bindValue(':' . $column, $value);
		    }
		    $statement->execute();
			return $GLOBALS['pdo']->lastInsertId();
			// return true;
		}

		public function update($dataValues) {
		    $setClause = implode(', ', array_map(function ($column) {
		        return $column . ' = :' . $column;
		    }, array_keys($dataValues)));
		    $sql = "UPDATE " . DB_PREFIX . "{$this->table} SET $setClause";
			if(!empty($this->conditions)) {
				$sql .= " WHERE " . implode(" AND ", $this->conditions);
			}
		    $statement = $GLOBALS['pdo']->prepare($sql);
		    foreach ($dataValues as $column => $value) {
		        $statement->bindValue(':' . $column, $value);
		    }
		    $statement->execute();
		    return true;
		}

		public function first(){
			$query = "SELECT * FROM ".DB_PREFIX."{$this->table}";
			if(!empty($this->joins)){
				foreach ($this->joins as $join) {
					list($joinType, $joinTable, $joinCondition) = $join;
					$query .= " $joinType JOIN $joinTable ON $joinCondition";
				}
			}
			if(!empty($this->conditions)) {
				$query .= " WHERE " . implode(" AND ", $this->conditions);
			}
			if(!empty($this->whereInConditions)) {
				foreach ($this->whereInConditions as $whereIn) {
					list($column, $values) = $whereIn;
					$placeholders = implode(', ', array_fill(0, count($values), '?'));
					$query .= " AND FIND_IN_SET(?, $column)";
					$this->parameters = array_merge($this->parameters, $values);
				}
			}
			if(!empty($this->orderBy)) {
				$query .= $this->orderBy;
			}
			$query .= " LIMIT 1";
			$statement = $GLOBALS['pdo']->prepare($query);
			$statement->execute($this->parameters);
			$this->result = $statement->fetchAll(PDO::FETCH_ASSOC);
			return $this;
		}

		public function get(){
			$query = "SELECT * FROM ". DB_PREFIX."{$this->table}";
			if(!empty($this->joins)){
				foreach ($this->joins as $join) {
					list($joinType, $joinTable, $joinCondition) = $join;
					$query .= " $joinType JOIN $joinTable ON $joinCondition";
				}
			}
			if(!empty($this->conditions)) {
				$query .= " WHERE " . implode(" AND ", $this->conditions);
			}
			if(!empty($this->whereInConditions)) {
				foreach ($this->whereInConditions as $whereIn) {
					list($column, $values) = $whereIn;
					$placeholders = implode(', ', array_fill(0, count($values), '?'));
					$query .= " AND FIND_IN_SET(?, $column)";
					$this->parameters = array_merge($this->parameters, $values);
				}
			}
			if(!empty($this->orderBy)) {
				$query .= $this->orderBy;
			}
			if(!empty($this->limit)){
				$query .= " LIMIT " . $this->limit;
			}
			$statement = $GLOBALS['pdo']->prepare($query);
			$statement->execute($this->parameters);
			$this->result = $statement->fetchAll(PDO::FETCH_ASSOC);
			return $this;
		}







	}
