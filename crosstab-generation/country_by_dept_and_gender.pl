$params = {
    'col_sub_total' => 1,
    'row_total' => 1,
    'row_sub_total' => 1,
    'col_total' => 1,
    'remove_if_zero' => 1,
    'remove_if_null' => 1,
    'use_real_names' => 1,
    'op' => [ [ 'sum', 'salary' ] ],
    'from' =>    'xtab_countries '
               . 'INNER JOIN xtab_locations using (country_id) '
               . 'INNER JOIN xtab_person USING (loc_id) '
               . 'INNER JOIN xtab_departments USING (dept_id)'
               ,
    'cols' => [
                {
                  'id'     => 'dept_id',
                  'from'   => 'xtab_departments inner join xtab_person using (dept_id)',
                  'value'  => 'department'
                },
                {
                  'from'   => 'xtab_person',
                  'id'     => 'gender'
                }
              ],
    'rows' => [
                {
                  'col'    => 'country',
                }
              ]
};
