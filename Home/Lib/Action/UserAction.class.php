<?php
// 本类由系统自动生成，仅供测试用途
class UserAction extends CommenAction{
    public function index(){
		$this->display();
	}
	public function user(){
		$name=$_SESSION['name'];
		$user=M('imfor');
		//var_dump($user->select());
		//$arr=$user->field('id')->where($where)->find();
		$where['name']=$name;
		$arr=$user->where($where)->select();
		//var_dump($arr);
		//var_dump($arr);
		$this->assign("data",$arr);
		$this->display();
	}
	public function grade(){
		$name=$_SESSION['name'];
		$usert=M('userg');
		$where['name']=$name;
		$arr=$usert->where($where)->select();
		$this->assign("datat",$arr);
		$this->display();
	}
	public function userover(){
		
		$this->display();
	}
	public function modify(){
		$name=$_SESSION['name'];
		$user=M('imfor');
		//var_dump($user->select());
		//$arr=$user->field('id')->where($where)->find();
		$where['name']=$name;
		$arr=$user->where($where)->select();
		//var_dump($arr);
		//var_dump($arr);
		$this->assign("data",$arr);
		
		
		$this->display();
	}
	//接受传参
	public function domodify(){
		$demo['id']=$_POST['uid'];
		$demo['class']=$_POST['uclass'];
		$demo['address']=$_POST['uaddress'];
		$demo['phone']=$_POST['uphone'];
		$imfor=M('imfor');
		$where['id']=$demo['id'];
		$result=$imfor->where($where)->save($demo);
		if($result){
			$this->success('修改数据成功！！！！');
		}else{
			//var_dump($demo);
			$this->error("修改数据失败！");
		}
	}
	public function repass(){
		$this->display();
	}
	public function dorepass(){
		$one=$_POST['upass'];
		$two=$_POST['upasst'];
		if($one!=$two){
			$this->error("两次输入密码不同，请重新输入");
		}else{
			$demo['password']=$one;
			$user=M('user');
			$where['name']=$_SESSION['name'];
			$result=$user->where($where)->save($demo);
			if($result){
				$this->success('修改密码成功！！！！');
			}else{
				$this->error("修改数据失败！");
			}
		}
		
	}
	public function classNew(){
		$this->display();
	}
	public function classPeol(){
		$this->display();
	}
	public function classAct(){
		$this->display();
	}
	public function classthing(){
		$this->display();
	}
}