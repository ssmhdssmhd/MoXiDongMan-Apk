.class public Lfreemarker/ext/jython/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateHashModel;
.implements Lfreemarker/template/TemplateMethodModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;


# static fields
.field public static final for:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field public final do:Lorg/python/core/PyObject;

.field public final if:Lfreemarker/ext/jython/goto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jython/if$do;

    invoke-direct {v0}, Lfreemarker/ext/jython/if$do;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/if;->for:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2
    :try_start_0
    new-array v0, v0, [Lorg/python/core/PyObject;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 4
    iget-object v3, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateModel;

    .line 6
    invoke-virtual {v3, v4}, Lfreemarker/ext/jython/goto;->new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    iget-object v1, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v1, v0}, Lorg/python/core/PyObject;->__call__([Lorg/python/core/PyObject;)Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    iget-object v2, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 10
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/goto;->new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/python/core/PyObject;->__call__(Lorg/python/core/PyObject;)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    iget-object p1, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__call__()Lorg/python/core/PyObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    invoke-virtual {v0}, Lfreemarker/ext/jython/goto;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__finditem__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__findattr__(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    invoke-virtual {p1, v0}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object v0, Lorg/python/core/Py;->NoConversion:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__nonzero__()Z

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

.method public getAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
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

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
