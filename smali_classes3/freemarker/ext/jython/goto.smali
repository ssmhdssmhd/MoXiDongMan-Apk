.class public Lfreemarker/ext/jython/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/ObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jython/goto$do;
    }
.end annotation


# static fields
.field private static final for:Ljava/lang/Class;

.field public static final new:Lfreemarker/ext/jython/goto;


# instance fields
.field private final do:Lfreemarker/ext/util/if;

.field private if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/python/core/PyObject;

    sput-object v0, Lfreemarker/ext/jython/goto;->for:Ljava/lang/Class;

    .line 2
    new-instance v0, Lfreemarker/ext/jython/goto;

    invoke-direct {v0}, Lfreemarker/ext/jython/goto;-><init>()V

    sput-object v0, Lfreemarker/ext/jython/goto;->new:Lfreemarker/ext/jython/goto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lfreemarker/ext/jython/for;

    invoke-direct {v0, p0}, Lfreemarker/ext/jython/for;-><init>(Lfreemarker/ext/jython/goto;)V

    iput-object v0, p0, Lfreemarker/ext/jython/goto;->do:Lfreemarker/ext/util/if;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lfreemarker/ext/jython/goto;->if:Z

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/jython/goto;->if:Z

    return v0
.end method

.method public for(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/goto;->do:Lfreemarker/ext/util/if;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/if;->goto(Z)V

    return-void
.end method

.method public declared-synchronized if(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lfreemarker/ext/jython/goto;->if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/AdapterTemplateModel;

    sget-object v0, Lfreemarker/ext/jython/goto;->for:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p1}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lorg/python/core/PyString;

    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/python/core/PyString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    instance-of v0, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_5

    .line 8
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    .line 9
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p1}, Landroid/support/v4/c81;->if(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    .line 11
    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    .line 12
    new-instance v0, Lorg/python/core/PyLong;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Lorg/python/core/PyLong;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 13
    :cond_4
    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Lfreemarker/ext/jython/goto$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jython/goto$do;-><init>(Lfreemarker/ext/jython/goto;Lfreemarker/template/TemplateModel;)V

    return-object v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/jython/goto;->do:Lfreemarker/ext/util/if;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/if;->for(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
