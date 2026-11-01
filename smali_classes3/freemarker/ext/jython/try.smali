.class public Lfreemarker/ext/jython/try;
.super Lfreemarker/ext/jython/if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/TemplateCollectionModel;


# static fields
.field public static final new:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jython/try$do;

    invoke-direct {v0}, Lfreemarker/ext/jython/try$do;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/try;->new:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/if;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->if:Lfreemarker/ext/jython/goto;

    iget-object v1, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v1, p1}, Lorg/python/core/PyObject;->__finditem__(I)Lorg/python/core/PyObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jython/try$if;

    invoke-direct {v0, p0}, Lfreemarker/ext/jython/try$if;-><init>(Lfreemarker/ext/jython/try;)V

    return-object v0
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
