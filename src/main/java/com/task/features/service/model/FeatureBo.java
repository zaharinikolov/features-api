package com.task.features.service.model;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * @author nikolay.tashev on 23/01/2018.
 */
public class FeatureBo {

    private String name;
    private boolean isEnabled;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isEnabled() {
        return isEnabled;
    }

    public void setEnabled(boolean enabled) {
        isEnabled = enabled;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("name", name)
                .append("isGloballyEnabled", isEnabled)
                .toString();
    }
}
