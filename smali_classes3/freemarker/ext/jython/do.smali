.class public Lfreemarker/ext/jython/do;
.super Lfreemarker/ext/jython/if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;


# static fields
.field private static final case:Ljava/lang/String; = "values"

.field public static final else:Lfreemarker/ext/util/ModelFactory;

.field private static final new:Ljava/lang/String; = "keys"

.field private static final try:Ljava/lang/String; = "keySet"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jython/do$do;

    invoke-direct {v0}, Lfreemarker/ext/jython/do$do;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/do;->else:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/if;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V

    return-void
.end method


# virtual methods
.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    const-string v1, "keySet"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'?keys\' is not supported as there is no \'keys\' nor \'keySet\' attribute on an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lfreemarker/ext/jython/else;->do:Lfreemarker/ext/jython/case;

    iget-object v3, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    .line 5
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/case;->do(Lorg/python/core/PyObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public size()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__len__()I

    move-result v0
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'?values\' is not supported as there is no \'values\' attribute on an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lfreemarker/ext/jython/else;->do:Lfreemarker/ext/jython/case;

    iget-object v3, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    .line 4
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/case;->do(Lorg/python/core/PyObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
