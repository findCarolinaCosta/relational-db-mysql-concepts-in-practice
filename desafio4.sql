SELECT 
    u.user_name AS usuario,
    CASE
        WHEN YEAR(MAX(reproduction)) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM SpotifyClone.reproduction_history AS rh
INNER JOIN SpotifyClone.user AS u ON rh.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;