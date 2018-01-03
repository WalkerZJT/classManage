<?php
	class LoginAction extends Action{
		public function login(){
			if(isset($_SESSION['name'])|| $_SESSION['name']!=null){
				//$this->error('您已经登陆过，如需登录别的用户，请先注销之后再使用本功能!!!',U('Index/index'));
			}
			$this->display();
		}
		public function dologin(){
			$name=$_POST['name'];
			//echo $name;
			$password=$_POST['password'];
			//echo $password;
			$user=M('user');
			//var_dump($user->select());
			//调用where方法，where方法是并且的关系，一个为假，所有为假
			$where['name']=$name;
			$where['password']=$password;
			//find方法取得的是一个具体的值
			//field('id')是只取得ID号
			$arr=$user->field('id')->where($where)->find();
			if($arr){
				$_SESSION['name']=$name;
				$_SESSION['id']=$arr['id'];
				$this->success('welcome,'.$name.' !!!',U('User/index'));//U是生成一个完整的路径
			}else{
				$this->error("账号或密码错误");
				//$this-redirect('Logon/logon');
			}
		}
	}
?>