.class Lfreemarker/ext/jsp/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/do$try;,
        Lfreemarker/ext/jsp/do$case;,
        Lfreemarker/ext/jsp/do$new;,
        Lfreemarker/ext/jsp/do$for;,
        Lfreemarker/ext/jsp/do$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lfreemarker/template/TemplateModel;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateDirectiveModel;

    if-nez v0, :cond_0

    instance-of v0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_1

    :cond_0
    instance-of p0, p0, Lfreemarker/ext/jsp/do$if;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static for(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateMethodModelEx;)Lfreemarker/template/TemplateModel;
    .locals 2

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateDirectiveModel;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lfreemarker/ext/beans/c;

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/ext/jsp/do$for;

    check-cast p0, Lfreemarker/template/TemplateDirectiveModel;

    check-cast p1, Lfreemarker/ext/beans/c;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/do$for;-><init>(Lfreemarker/template/TemplateDirectiveModel;Lfreemarker/ext/beans/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/ext/jsp/do$new;

    check-cast p0, Lfreemarker/template/TemplateDirectiveModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/do$new;-><init>(Lfreemarker/template/TemplateDirectiveModel;Lfreemarker/template/TemplateMethodModelEx;)V

    :goto_0
    return-object v0

    .line 3
    :cond_1
    instance-of v0, p0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v0, :cond_3

    .line 4
    instance-of v0, p1, Lfreemarker/ext/beans/c;

    if-eqz v0, :cond_2

    new-instance v0, Lfreemarker/ext/jsp/do$try;

    check-cast p0, Lfreemarker/template/TemplateTransformModel;

    check-cast p1, Lfreemarker/ext/beans/c;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/do$try;-><init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/ext/beans/c;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lfreemarker/ext/jsp/do$case;

    check-cast p0, Lfreemarker/template/TemplateTransformModel;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/do$case;-><init>(Lfreemarker/template/TemplateTransformModel;Lfreemarker/template/TemplateMethodModelEx;)V

    :goto_1
    return-object v0

    .line 5
    :cond_3
    new-instance p1, Landroid/support/v4/mc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected custom JSP tag class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Lfreemarker/template/utility/if;->class(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static if(Lfreemarker/template/TemplateModel;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v0, :cond_0

    instance-of p0, p0, Lfreemarker/ext/jsp/do$if;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
