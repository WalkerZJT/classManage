<?php
	class AlogAction extends Action{
		public function login(){
			if(isset($_SESSION['name'])|| $_SESSION['name']!=null){
				//$this->error('���Ѿ���½���������¼����û�������ע��֮����ʹ�ñ�����!!!',U('Index/index'));
			}
			$this->display();
		}
		public function dologin(){
			$name=$_POST['name'];
			//echo $name;
			$password=$_POST['password'];
			//echo $password;
			$user=M('admin');
			//var_dump($user->select());
			//����where������where�����ǲ��ҵĹ�ϵ��һ��Ϊ�٣�����Ϊ��
			$where['name']=$name;
			$where['password']=$password;
			//find����ȡ�õ���һ�������ֵ
			//field('id')��ֻȡ��ID��
			$arr=$user->field('id')->where($where)->find();
			if($arr){
				$_SESSION['name']=$name;
				$_SESSION['id']=$arr['id'];
				$this->success('welcome,'.$name.' !!!',U('Admin/admin'));//U������һ��������·��
			}else{
				$this->error('The user does not exit!!!');
				//$this-redirect('Logon/logon');
			}
		}
	}
?>