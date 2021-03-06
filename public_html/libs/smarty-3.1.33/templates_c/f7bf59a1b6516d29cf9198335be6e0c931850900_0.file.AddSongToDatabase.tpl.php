<?php
/* Smarty version 3.1.33, created on 2019-11-14 11:47:27
  from 'C:\Apache24\htdocs\Kraken\public_html\templates\AddSongToDatabase.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dcd851f6b6758_47468823',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f7bf59a1b6516d29cf9198335be6e0c931850900' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\Kraken\\public_html\\templates\\AddSongToDatabase.tpl',
      1 => 1573750038,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dcd851f6b6758_47468823 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>
 
<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15999677815dcd851f6b30b2_86981183', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "template.tpl");
}
/* {block "content"} */
class Block_15999677815dcd851f6b30b2_86981183 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_15999677815dcd851f6b30b2_86981183',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="container">
        <div class="row">
            <div class="col">
                <form method='post'>
                    <h1>Add a Song</h1>
                    <p><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</p>
                    <div class="form-group row">
                        <label for="songName" class="col-4 col-form-label">Song Name:</label>
                        <div class="col-8">
                            <input id="songName" name="songName" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songLengthMinute" class="col-4 col-form-label">Minutes: </label>
                        <div class="col-8">
                            <input id="songLengthMinute" name="songLengthMinute" type="number" min="00" max="59" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songLengthSecond" class="col-4 col-form-label">Seconds: </label>
                        <div class="col-8">
                            <input id="songLengthSecond" name="songLengthSecond" type="number" min="01" max="59"  class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songGenre" class="col-4 col-form-label">Genre:</label>
                        <div class="col-8">
                            <input id="songGenre" name="songGenre" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songAlbum" class="col-4 col-form-label">Album:</label>
                        <div class="col-8">
                            <input id="songAlbum" name="songAlbum" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songArtist" class="col-4 col-form-label">Artist/Band:</label>
                        <div class="col-8">
                            <input id="songArtist" name="songArtist" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="songDescription" class="col-4 col-form-label">Description</label>
                        <div class="col-8">
                            <textarea id="songDescription" name="songDescription" cols="40" rows="5" class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="text" class="col-4 col-form-label">User Who Added the Song:</label>
                        <div class="col-8">
                            <input id="userAdded" name="userAdded" type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-4 col-8">
                            <button name="submit" type="submit" class="btn">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php
}
}
/* {/block "content"} */
}
