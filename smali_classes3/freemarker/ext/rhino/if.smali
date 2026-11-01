.class public Lfreemarker/ext/rhino/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;
.implements Lfreemarker/template/TemplateSequenceModel;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/template/TemplateScalarModel;
.implements Lfreemarker/template/TemplateBooleanModel;
.implements Lfreemarker/template/TemplateNumberModel;


# static fields
.field public static final for:Lfreemarker/ext/util/ModelFactory;


# instance fields
.field private final do:Lorg/mozilla/javascript/Scriptable;

.field private final if:Lfreemarker/ext/beans/try;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/rhino/if$do;

    invoke-direct {v0}, Lfreemarker/ext/rhino/if$do;-><init>()V

    sput-object v0, Lfreemarker/ext/rhino/if;->for:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    return-void
.end method


# virtual methods
.method public do()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public get(I)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lfreemarker/ext/rhino/do;

    check-cast p1, Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v0, p1, v1, v2}, Lfreemarker/ext/rhino/do;-><init>(Lorg/mozilla/javascript/Function;Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/try;)V

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/ext/rhino/do;

    check-cast p1, Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v0, p1, v1, v2}, Lfreemarker/ext/rhino/do;-><init>(Lorg/mozilla/javascript/Function;Lorg/mozilla/javascript/Scriptable;Lfreemarker/ext/beans/try;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    const-class p1, Ljava/lang/Object;

    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAsBoolean()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method if()Lfreemarker/ext/beans/try;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    iget-object v1, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    .line 4
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    check-cast v4, Ljava/lang/Number;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 7
    invoke-static {v5, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 8
    :cond_0
    iget-object v5, p0, Lfreemarker/ext/rhino/if;->do:Lorg/mozilla/javascript/Scriptable;

    .line 9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v5, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/rhino/if;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, v2}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method
