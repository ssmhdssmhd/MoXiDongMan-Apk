.class public Lfreemarker/template/utility/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/if$if;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lfreemarker/template/utility/if;->catch(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static case(Lfreemarker/template/TemplateModel;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "Null"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-static {p0}, Lfreemarker/template/utility/if;->else(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/if;->do(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V

    .line 5
    :cond_1
    instance-of v2, p0, Lfreemarker/core/x1;

    if-eqz v2, :cond_3

    .line 6
    move-object v2, p0

    check-cast v2, Lfreemarker/core/x1;

    invoke-virtual {v2}, Lfreemarker/core/x1;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "function"

    goto :goto_0

    :cond_2
    const-string v2, "macro"

    :goto_0
    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/if;->do(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V

    .line 8
    invoke-static {p0}, Lfreemarker/template/utility/if;->final(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v0, v2}, Lfreemarker/template/utility/if;->catch(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const-string v3, " ("

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lfreemarker/template/utility/if;->catch(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_5

    const-string v0, "wrapper: "

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " wrapped into "

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p0, ")"

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    const-string v0, "java.util."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_7

    const-string p1, "freemarker.template."

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f.t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "freemarker.ext.beans."

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f.e.b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "freemarker.core."

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f.c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "freemarker.ext."

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f.e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "freemarker."

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0

    .line 15
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lfreemarker/template/utility/if;->const(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Null"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lfreemarker/template/utility/if;->catch(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static do(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    const-class v1, Lfreemarker/template/TemplateNodeModelEx;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extended node"

    .line 3
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    const-class v1, Lfreemarker/template/TemplateNodeModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "node"

    .line 5
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    const-class v1, Lfreemarker/template/TemplateDirectiveModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "directive"

    .line 7
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    const-class v1, Lfreemarker/template/TemplateTransformModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "transform"

    .line 9
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 10
    :cond_3
    :goto_1
    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sequence"

    .line 11
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_4
    const-class v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    const-class v1, Lfreemarker/template/TemplateCollectionModelEx;

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "extended_collection"

    goto :goto_2

    :cond_5
    const-string v1, "collection"

    .line 15
    :goto_2
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_6
    const-class v1, Lfreemarker/template/TemplateModelIterator;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "iterator"

    .line 17
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 18
    :cond_7
    :goto_3
    const-class v1, Lfreemarker/template/TemplateMethodModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "method"

    .line 19
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 20
    :cond_8
    const-class v1, Lfreemarker/core/d0$this;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "namespace"

    .line 21
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :cond_9
    const-class v1, Lfreemarker/template/TemplateHashModelEx;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "extended_hash"

    .line 23
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_a
    const-class v1, Lfreemarker/template/TemplateHashModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "hash"

    .line 25
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 26
    :cond_b
    :goto_4
    const-class v1, Lfreemarker/template/TemplateNumberModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "number"

    .line 27
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 28
    :cond_c
    const-class v1, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "date_or_time_or_datetime"

    .line 29
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 30
    :cond_d
    const-class v1, Lfreemarker/template/TemplateBooleanModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "boolean"

    .line 31
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 32
    :cond_e
    const-class v1, Lfreemarker/template/TemplateScalarModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "string"

    .line 33
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 34
    :cond_f
    const-class v1, Lfreemarker/core/TemplateMarkupOutputModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "markup_output"

    .line 35
    invoke-static {p0, p1, p2}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 36
    :cond_10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ne p2, v0, :cond_11

    const-string p2, "misc_template_model"

    .line 37
    invoke-static {p0, p1, p2}, Lfreemarker/template/utility/if;->if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private static else(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;
    .locals 4

    .line 1
    const-class v0, Lfreemarker/template/TemplateHashModelEx;

    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    instance-of v2, p0, Lfreemarker/ext/beans/new;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 2
    instance-of v2, p0, Lfreemarker/ext/beans/super;

    if-eqz v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v1, p0, Lfreemarker/ext/beans/static;

    if-nez v1, :cond_9

    instance-of v1, p0, Lfreemarker/ext/beans/native;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v1, p0, Lfreemarker/ext/beans/throws;

    if-eqz v1, :cond_2

    return-object v0

    .line 5
    :cond_2
    instance-of v1, p0, Lfreemarker/ext/beans/private;

    if-eqz v1, :cond_3

    .line 6
    const-class p0, Lfreemarker/template/TemplateNumberModel;

    return-object p0

    .line 7
    :cond_3
    instance-of v1, p0, Landroid/support/v4/ac;

    if-eqz v1, :cond_4

    .line 8
    const-class p0, Lfreemarker/template/TemplateBooleanModel;

    return-object p0

    .line 9
    :cond_4
    instance-of v1, p0, Lfreemarker/ext/beans/throw;

    if-eqz v1, :cond_5

    .line 10
    const-class p0, Lfreemarker/template/TemplateDateModel;

    return-object p0

    .line 11
    :cond_5
    instance-of v1, p0, Lfreemarker/ext/beans/f;

    if-eqz v1, :cond_8

    .line 12
    move-object v1, p0

    check-cast v1, Lfreemarker/ext/beans/new;

    invoke-virtual {v1}, Lfreemarker/ext/beans/new;->getWrappedObject()Ljava/lang/Object;

    move-result-object v1

    .line 13
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const-class v0, Lfreemarker/template/TemplateScalarModel;

    goto :goto_0

    :cond_6
    instance-of p0, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_8
    return-object v3

    .line 14
    :cond_9
    :goto_1
    const-class p0, Lfreemarker/template/TemplateCollectionModel;

    return-object p0

    .line 15
    :cond_a
    instance-of v0, p0, Lfreemarker/ext/beans/c;

    if-nez v0, :cond_d

    instance-of v0, p0, Lfreemarker/ext/beans/strictfp;

    if-eqz v0, :cond_b

    goto :goto_2

    .line 16
    :cond_b
    instance-of v0, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_c

    check-cast p0, Lfreemarker/template/TemplateCollectionModel;

    .line 17
    invoke-static {p0}, Lfreemarker/core/y4;->class(Lfreemarker/template/TemplateCollectionModel;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v1

    :cond_c
    return-object v3

    .line 18
    :cond_d
    :goto_2
    const-class p0, Lfreemarker/template/TemplateMethodModelEx;

    return-object p0
.end method

.method private static final(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p0, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p0}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p0, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Lfreemarker/template/AdapterTemplateModel;

    const-class v1, Ljava/lang/Object;

    invoke-interface {p0, v1}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static for(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_2

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_3

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 5
    :cond_3
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_4

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 7
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_6

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 8
    :cond_6
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 9
    :cond_7
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_8

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :cond_8
    return-object p0
.end method

.method public static goto(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 4
    invoke-static {v0, p0, p1}, Lfreemarker/template/utility/if;->new(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static if(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static new(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class-loader resource not found (shown quoted): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". The base class was "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static super(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static this(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class-loader resource not found (shown quoted): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". The base ClassLoader was: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static throw(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Properties;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {v2, p0, p1}, Lfreemarker/template/utility/if;->new(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Lfreemarker/template/utility/if$if; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    .line 6
    :catch_0
    :try_start_4
    new-instance v3, Lfreemarker/template/utility/if$if;

    invoke-direct {v3, v1}, Lfreemarker/template/utility/if$if;-><init>(Lfreemarker/template/utility/if$do;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8
    :catch_1
    :try_start_6
    throw v3

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 9
    :catch_2
    new-instance v2, Lfreemarker/template/utility/if$if;

    invoke-direct {v2, v1}, Lfreemarker/template/utility/if$if;-><init>(Lfreemarker/template/utility/if$do;)V

    throw v2
    :try_end_6
    .catch Lfreemarker/template/utility/if$if; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    move-object v2, v1

    .line 10
    :catch_4
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 12
    :cond_0
    :try_start_8
    invoke-static {v1, p0, p1}, Lfreemarker/template/utility/if;->new(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_1

    .line 14
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_1
    :goto_1
    return-object v0

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 15
    :catch_6
    :cond_2
    throw p0
.end method

.method public static try(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static while(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 5
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 6
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 7
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 8
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 9
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Void;

    :cond_8
    return-object p0
.end method
