<h4>Hello <?php echo $last_name;?></h4>
<p>You are successfully registered.Thank You to Join Our Comunity !</p>
<p>
    Your Login Info<br/>
    <strong>Email Address:</strong><?php echo $to_address?><br/>
    <strong>Password:</strong><?php echo $password?><br/>
</p>
<p>
   To Active Your Account Please Click The link Bellow:<br/>
   <a href="<?php echo base_url()?>welcome/active_user_account/<?php echo $user_id?>"><?php echo base_url()?>welcome/active_user_account</a>
   
</p>
<p>
    <strong>Regards</strong><br/>
    Blog Batch 06
</p>