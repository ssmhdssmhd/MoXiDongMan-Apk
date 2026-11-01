.class public Lfreemarker/ext/jython/new;
.super Lfreemarker/ext/jython/if;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateNumberModel;


# static fields
.field public static final new:Lfreemarker/ext/util/ModelFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jython/new$do;

    invoke-direct {v0}, Lfreemarker/ext/jython/new$do;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/new;->new:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/jython/if;-><init>(Lorg/python/core/PyObject;Lfreemarker/ext/jython/goto;)V

    return-void
.end method


# virtual methods
.method public getAsNumber()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lorg/python/core/PyObject;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lorg/python/core/Py;->NoConversion:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/jython/if;->do:Lorg/python/core/PyObject;

    invoke-virtual {v0}, Lorg/python/core/PyObject;->__float__()Lorg/python/core/PyFloat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/python/core/PyFloat;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Lorg/python/core/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Landroid/support/v4/k52;

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
