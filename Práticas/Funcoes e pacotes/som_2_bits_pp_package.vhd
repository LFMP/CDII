package som_2_bits_pp_package is
	procedure soma(x: in bit_vector;y: in bit_vector;
	vem1: in bit; signal res: out bit_vector;
	signal vai1: out bit);
end som_2_bits_pp_package;

package body som_2_bits_pp_package is
	constant m: integer:=2;
	procedure soma(x:in bit_vector(m-1 downto 0); y:in bit_vector(m-1 downto 0);
				vem1: in bit; signal res: out bit_vector(m-1 downto 0);
				signal vai1: out bit) is
		variable vai1i: bit_vector(m downto 0);
		begin
			vai1i(0):=vem1;
			loopsoma: for i in 0 to m-1 loop
				res(i) <= x(i) xor y(i) xor vai1i(i);
				vai1i(i+1):= (x(i) and y(i)) or (y(i) and vai1i(i)) or (x(i) and vai1i(i));
			end loop loopsoma;
			vai1<=vai1i(m);
		end soma;
	end som_2_bits_pp_package;