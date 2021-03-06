<html>
<head>
    <title>DJ Test</title>
    <{if $xoops_themecss}>
        <link rel="stylesheet" type="text/css" media="all" title="Style sheet" href="<{$xoops_themecss}>">
    <{/if}>
</head>
<body>

<{if $data.error}>
    <{$data.error}>
<{else}>
    <div style="text-align: center;"><{$smarty.const._MD_UHQRADIO_POP_DJT_TITLE}></div>
    <hr>
    <table>
        <tr>
            <th>Test</th>
            <th>Result</th>
        </tr>
        <{foreach item=list from=$data.test}>
            <tr>
                <td nowrap><{$list.descr}></td>
                <td>
                    <{if $list.status == 1}><span style="color: green; "><{$smarty.const._MD_UHQRADIO_POP_DJT_GOOD}>
                        <{elseif $list.status == -1}><span style="color: red; "><{$smarty.const._MD_UHQRADIO_POP_DJT_ERR}> <{$list.error}>
                            <{else}><span style="color: gray; "><{$smarty.const._MD_UHQRADIO_POP_DJT_SKIP}><{/if}>
                            </span>
                </td>
            </tr>
        <{/foreach}>
    </table>
<{/if}>

</body>
</html>
