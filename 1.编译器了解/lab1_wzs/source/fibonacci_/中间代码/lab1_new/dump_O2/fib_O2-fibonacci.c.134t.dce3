
;; Function main (main, funcdef_no=23, decl_uid=3375, cgraph_uid=24, symbol_order=23) (executed once)

int main ()
{
  int i;
  int next;
  int b;
  int a;

  <bb 2> [local count: 97603128]:
  __printf_chk (2, "Fibonacci Series up to %d terms:\n", 10);

  <bb 3> [local count: 976138697]:
  # a_18 = PHI <a_1(5), 0(2)>
  # b_19 = PHI <b_3(5), 1(2)>
  # i_20 = PHI <i_10(5), 0(2)>
  if (i_20 <= 1)
    goto <bb 5>; [20.00%]
  else
    goto <bb 4>; [80.00%]

  <bb 4> [local count: 780910955]:
  next_9 = a_18 + b_19;

  <bb 5> [local count: 976138697]:
  # a_1 = PHI <a_18(3), b_19(4)>
  # b_3 = PHI <b_19(3), next_9(4)>
  # next_5 = PHI <i_20(3), next_9(4)>
  __printf_chk (2, "%d ", next_5);
  i_10 = i_20 + 1;
  if (i_10 != 10)
    goto <bb 3>; [90.91%]
  else
    goto <bb 6>; [9.09%]

  <bb 6> [local count: 97603128]:
  __builtin_putchar (10);
  return 0;

}


