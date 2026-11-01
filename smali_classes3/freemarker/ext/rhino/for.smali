.class public Lfreemarker/ext/rhino/for;
.super Lfreemarker/ext/beans/try;
.source "SourceFile"


# static fields
.field private static final finally:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lfreemarker/ext/rhino/for$do;

    invoke-direct {v0}, Lfreemarker/ext/rhino/for$do;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/rhino/for;->finally:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/try;-><init>()V

    return-void
.end method


# virtual methods
.method public switch(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lfreemarker/ext/rhino/if;->for:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lfreemarker/ext/beans/try;->switch(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/rhino/for;->finally:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NOT_FOUND:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-super {p0, v1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    .line 6
    :cond_2
    invoke-super {p0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method
