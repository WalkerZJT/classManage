<?php
	class CommenAction extends Action{
		public function _initialize(){
			if(!isset($_SESSION['name'])|| $_SESSION['name']==''){
				//$this->show("登陆后才能使用");
				$this->redirect('Login/login');
			}
		}
	}
?>