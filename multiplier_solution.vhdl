```vhdl
ENTITY multiplier IS
    PORT (
        clk : IN STD_LOGIC;
        a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        product : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        overflow : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
    SIGNAL temp_product : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
    PROCESS (clk) 
    BEGIN
        IF rising_edge(clk) THEN
            temp_product <= UNSIGNED(a) * UNSIGNED(b);
            product <= STD_LOGIC_VECTOR(temp_product);
            overflow <= '1' WHEN temp_product > to_unsigned(2**15 -1, 16) ELSE '0';
        END IF;
    END PROCESS;
END ARCHITECTURE;
```