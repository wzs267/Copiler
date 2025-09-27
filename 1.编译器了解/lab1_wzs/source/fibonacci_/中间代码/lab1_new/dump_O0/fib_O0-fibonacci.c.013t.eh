
;; Function main (main, funcdef_no=0, decl_uid=3174, cgraph_uid=1, symbol_order=0)

int main ()
{
  int i;
  int next;
  int b;
  int a;
  int D.3188;

  a = 0;
  b = 1;
  printf ("Fibonacci Series up to %d terms:\n", 10);
  i = 0;
  goto <D.3183>;
  <D.3182>:
  if (i <= 1) goto <D.3185>; else goto <D.3186>;
  <D.3185>:
  next = i;
  goto <D.3187>;
  <D.3186>:
  next = a + b;
  a = b;
  b = next;
  <D.3187>:
  printf ("%d ", next);
  i = i + 1;
  <D.3183>:
  if (i <= 9) goto <D.3182>; else goto <D.3180>;
  <D.3180>:
  __builtin_putchar (10);
  D.3188 = 0;
  goto <D.3189>;
  D.3188 = 0;
  goto <D.3189>;
  <D.3189>:
  return D.3188;
}


