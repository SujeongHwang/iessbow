package com.lmmf.framework;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;

/**
 * ֱ�Ӹ��ƵĿγ���ƵĴ���
 */
public abstract class BaseDao<T, PK extends Serializable> {

	private Class<T> entityClass;

	@Resource
	private SessionFactory sessionFactory;

	public BaseDao() {
		this.entityClass = null;
		Class c = getClass();
		Type t = c.getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] p = ((ParameterizedType) t).getActualTypeArguments();
			this.entityClass = (Class<T>) p[0];
		}
	}

	/*******************************************************/
	public void save(T entity) throws Exception {
		this.sessionFactory.getCurrentSession().save(entity);
	}

	public void update(T entity) throws Exception {
		this.sessionFactory.getCurrentSession().update(entity);
	}

	public void delete(Object entity) throws Exception {
		this.sessionFactory.getCurrentSession().delete(entity);
	}

	public void delete(Serializable id) throws Exception {
		this.delete(this.sessionFactory.getCurrentSession().load(entityClass,
				id));
	}

	public T get(Serializable id) throws Exception {
		return (T) this.sessionFactory.getCurrentSession().get(entityClass, id);
	}

	public T load(Serializable id) throws Exception {
		return (T) this.sessionFactory.getCurrentSession()
				.load(entityClass, id);
	}

	// **************HQL***************************
	/**
	 * 
	 * @desc 通过hql查询单个对象
	 * @author wangwei
	 * @param hql
	 *            查询语句
	 * @param params
	 *            查询语句参数
	 * @return 单个对象
	 * @throws Exception
	 */
	public T findOne(String hql, Object[] params) throws Exception {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		return (T) query.uniqueResult();
	}

	/**
	 * 
	 * @desc 按条件查询数�?
	 * @author wangwei
	 * @param hql
	 *            条件查询语句
	 * @param params
	 *            查询参数
	 * @return 按条件查询的数据
	 * @throws Exception
	 */
	public List<T> findByProperty(String hql, Object[] params) throws Exception {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		return query.list();
	}

	/**
	 * 
	 * @desc 按条件查询数据数�?
	 * @author wangwei
	 * @param hql
	 *            条件查询语句
	 * @param params
	 *            查询参数
	 * @return 数据数量
	 * @throws Exception
	 */
	public Long findCountByPage(String hql, Object[] params) throws Exception {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		return (Long) query.uniqueResult();
	}

	/**
	 * 
	 * @desc 按条件分页查询数�?
	 * @author wangwei
	 * @param pageNum
	 * @param pageSize
	 * @param hql
	 * @param params
	 * @return
	 * @throws Exception
	 */

	public List<T> findListByPage(int pageNum, int pageSize, String hql,
			Object[] params) throws Exception {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	/**
	 * 
	 * @desc 按条件分页查询数据，封装到Page对象�?
	 * @author wangwei
	 * @param pageNumber
	 *            页码
	 * @param pageSize
	 *            每页数据个数
	 * @param hql
	 *            查询语句
	 * @param params
	 *            查询参数
	 * @return 分页数据Page对象
	 * @throws Exception
	 */

	public Page<T> findByPage(int pageNumber, int pageSize, String hql,
			Object[] params) throws Exception {
		long total = findCountByPage("select count(*) " + hql, params);
		List<T> rows = findListByPage(pageNumber, pageSize, hql, params);
		Page<T> page = new Page<T>(pageNumber, pageSize);
		page.setTotalCount((int) total);
		page.setList(rows);
		return page;
	}

	// **************SQL***************************
	/**
	 * @desc 通过原生SQL进行新增，修改，删除
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 影响记录�?
	 * @throws Exception
	 */
	public int excuteSql(String sql, Object[] params) throws Exception {
		int result;
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		result = query.executeUpdate();
		return result;
	}

	/**
	 * @desc 通过原生SQL进行查询，返回单个结果集，以Map<String, Object>形式存放
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 查询出的数据
	 * @throws Exception
	 */
	public Map<String, Object> findOneBySql(String sql, Object[] params)
			throws Exception {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		Map<String, Object> result = (Map<String, Object>) query.uniqueResult();
		return result;
	}

	/**
	 * @desc 通过原生SQL进行查询，返回多个结果集，以List<Map<String, Object>>形式存放
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 查询出的记录
	 * @throws Exception
	 */
	public List<Map<String, Object>> findBySql(String sql, Object[] params)
			throws Exception {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		List<Map<String, Object>> list = query.list();
		return list;
	}

	/**
	 * 
	 * @desc 分页原生SQL进行统计数量
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 记录数量
	 * @throws Exception
	 */
	public Long findCount4PageBySql(String sql, Object[] params)
			throws Exception {
		SQLQuery query = this.sessionFactory.getCurrentSession()
				.createSQLQuery(sql);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		return Long.parseLong(query.uniqueResult().toString());
	}

	/**
	 * 
	 * @desc 分页原生SQL进行查询,返回List
	 * @author wangwei
	 * @param sql
	 * @param params
	 * @param pageNum
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> findList4PageBySql(int pageNum,
			int pageSize, String sql, Object[] params) throws Exception {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++)
				query.setParameter(i, params[i]);
		}
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		List<Map<String, Object>> list = query.list();
		return list;
	}

	/**
	 * 
	 * @desc 分页原生SQL进行查询，返回Page
	 * @author wangwei
	 * @param pageNumber
	 * @param pageSize
	 * @param sql1
	 *            统计数量sql
	 * @param sql2
	 *            查询数据sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public Page<Map<String, Object>> findPageBySql(int pageNumber,
			int pageSize, String sql1, String sql2, Object[] params)
			throws Exception {
		long total = this.findCount4PageBySql(sql1, params);
		List<Map<String, Object>> list = this.findList4PageBySql(pageNumber,
				pageSize, sql2, params);
		Page<Map<String, Object>> page = new Page<Map<String, Object>>(
				pageNumber, pageSize);
		page.setTotalCount((int) total);
		page.setList(list);
		return page;
	}

	/**
	 * @desc 通过原生SQL进行查询，返回多个结果集，以List<Map<String, Object>>形式存放
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 影响记录�?
	 * @throws Exception
	 */
	public List<Map<String, Object>> findBySql(String sql, Map params)
			throws Exception {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		Iterator<String> keys = params.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			Object value = params.get(key);
			if (value instanceof Collection)
				query.setParameterList(key, (Collection) value);
			else
				query.setParameter(key, value);
		}
		List<Map<String, Object>> list = query.list();
		return list;
	}

	/**
	 * 
	 * @desc 分页原生SQL进行统计数量
	 * @author wangwei
	 * @param sql
	 *            原生sql语句
	 * @param params
	 *            sql语句中的参数�?
	 * @return 影响记录�?
	 * @throws Exception
	 */
	public Long findCount4PageBySql(String sql, Map params) throws Exception {
		SQLQuery query = this.sessionFactory.getCurrentSession()
				.createSQLQuery(sql);
		Iterator<String> keys = params.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			Object value = params.get(key);
			if (value instanceof Collection)
				query.setParameterList(key, (Collection) value);
			else
				query.setParameter(key, value);
		}
		return Long.parseLong(query.uniqueResult().toString());
	}

	/**
	 * 
	 * @desc 分页原生SQL进行查询，返回List
	 * @author wangwei
	 * @param pageNum
	 * @param pageSize
	 * @param sql
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> findList4PageBySql(int pageNum,
			int pageSize, String sql, Map params) throws Exception {
		SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setResultTransformer(CriteriaSpecification.ALIAS_TO_ENTITY_MAP);
		Iterator<String> keys = params.keySet().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			Object value = params.get(key);
			if (value instanceof Collection)
				query.setParameterList(key, (Collection) value);
			else
				query.setParameter(key, value);
		}
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		List<Map<String, Object>> list = query.list();
		return list;
	}

	/**
	 * 
	 * @desc 分页原生SQL进行查询，返回Page
	 * @author wangwei
	 * @param pageNumber
	 * @param pageSize
	 * @param sql1
	 * @param sql2
	 * @param params
	 * @return
	 * @throws Exception
	 */
	public Page<Map<String, Object>> findPageBySql(int pageNumber,
			int pageSize, String sql1, String sql2, Map params)
			throws Exception {
		long total = this.findCount4PageBySql(sql1, params);
		List<Map<String, Object>> list = this.findList4PageBySql(pageNumber,
				pageSize, sql2, params);
		Page<Map<String, Object>> page = new Page<Map<String, Object>>(
				pageNumber, pageSize);
		page.setTotalCount((int) total);
		page.setList(list);
		return page;
	}
}
