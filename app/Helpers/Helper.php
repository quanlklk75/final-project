<?php
function MenuMulti($data, $parent_id, $str = '---| ', $select = array())
{
    foreach ($data as $val) {
        $id = $val["id"];
        $ten = $val["name"];
        if ($val['parent_id'] == $parent_id) {
            // print_r($select);  exit();
            if ($select != 0 && in_array($id, $select)) {
                echo '<option value="' . $id . '" selected >' . $str . " " . $ten . '</option>';
            } else {
                echo '<option value="' . $id . '">' . $str . " " . $ten . '</option>';
            }
            MenuMulti($data, $id, $str . '---|', $select);
        }
    }
}

function MenuMulti_menu($data, $parent_id, $str = '---| ', $select)
{
    foreach ($data as $val) {
        $id = $val["id"];
        $ten = $val["name"];
        if ($val['parent_id'] == $parent_id) {
            // print_r($select);  exit();
            if ($select != 0 && $id == $select) {

                echo '<option value="' . $id . '" selected >' . $str . " " . $ten . '</option>';
            } else {
                echo '<option value="' . $id . '">' . $str . " " . $ten . '</option>';
            }
            MenuMulti_menu($data, $id, $str . '---|', $select);
        }
    }
}

function listcate($data, $parent_id = 0, $str = "")
{
    foreach ($data as $val) {
        $id = $val["id"];
        $ten = $val["name"];
        if ($val['parent_id'] == $parent_id) {
            echo '<tr>';
            if ($str == "") {
                echo '<td ><strong>' . $id . '</strong></td>';
                echo '<td ><strong style="color:blue;">' . $str . '- ' . $ten . '</strong></td>';
            } else {
                echo '<td ><strong>' . $id . '</strong></td>';
                echo '<td style="color:green;">' . $str . '--|' . $ten . '</td>';
            }
            echo '<td class="list_td aligncenter">
		            <a class="btn btn-xs btn-info" href="../admins/cates/edit/' . $id . '" title="Sửa"><span class="fa fa-edit"> Edit</span></a>&nbsp;&nbsp;&nbsp;
		            <a class="btn btn-xs btn-danger" href="../admins/cates/del/' . $id . '" title="Xóa" onclick="return confirm(\'You definitely want to delete this category ?\') "> <span class="fa fa-trash"> Delete</span> </a>
			      </td>
			    </tr>';
            listcate($data, $id, $str . " ---| ");
        }
    }
}

?>
