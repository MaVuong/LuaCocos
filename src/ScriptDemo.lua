function AnimationParse(strinfo)
   local tbdecode=decode(strinfo);
  
  local xpos=tbdecode["tx"]+0;
  local scrt={};
  
  if xpos<240 then
    scrt["cid"]="1";
    scrt["script"]='["RotateBy(2||360)"]';
  else
    scrt["cid"]="2";
    scrt["script"]='["JumpAction(4||{420,90})"]';
  end
  
  return encode(scrt);
end
