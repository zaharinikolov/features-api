package com.task.features.persistence.repository;

import com.task.features.persistence.entity.FeatureEntity;

import org.springframework.data.repository.Repository;

import java.util.Optional;
import java.util.stream.Stream;

import javax.transaction.Transactional;

/**
 * @author nikolay.tashev on 23/01/2018.
 */
public interface FeatureRepo extends Repository<FeatureEntity, Integer> {

    Optional<FeatureEntity> findOneById(Integer id);

    Stream<FeatureEntity> findAll();

    @Transactional
    FeatureEntity saveAndFlush(FeatureEntity entity);

    @Transactional
    void delete(FeatureEntity entity);
}
