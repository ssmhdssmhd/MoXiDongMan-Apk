.class public final Lcom/sun/script/javascript/JSAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final DEL_PROP:Ljava/lang/String; = "__delete__"

.field private static final GET_PROP:Ljava/lang/String; = "__get__"

.field private static final GET_PROPIDS:Ljava/lang/String; = "__getIds__"

.field private static final HAS_PROP:Ljava/lang/String; = "__has__"

.field private static final PUT_PROP:Ljava/lang/String; = "__put__"


# instance fields
.field private adaptee:Lorg/mozilla/javascript/Scriptable;

.field private isPrototype:Z

.field private parent:Lorg/mozilla/javascript/Scriptable;

.field private prototype:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/script/javascript/JSAdapter;->setAdaptee(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 7
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 9
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 10
    :try_start_0
    invoke-interface {p1, v0, v2, v1, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method private getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Function;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/sun/script/javascript/JSAdapter;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/script/javascript/JSAdapter;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/sun/script/javascript/JSAdapter;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 3
    invoke-static {p1}, Lcom/sun/script/javascript/JSAdapter;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/script/javascript/JSAdapter;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const/4 p0, 0x1

    .line 4
    iput-boolean p0, p2, Lcom/sun/script/javascript/JSAdapter;->isPrototype:Z

    const-string p0, "JSAdapter"

    const/4 v0, 0x2

    .line 5
    invoke-static {p1, p0, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private mapToId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/sun/script/javascript/JSAdapter;->isPrototype:Z

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lcom/sun/script/javascript/JSAdapter;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    .line 4
    instance-of v0, p3, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "TypeError: not a function"

    .line 6
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/RhinoException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/script/javascript/JSAdapter;->isPrototype:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 3
    array-length p2, p3

    if-lez p2, :cond_0

    .line 4
    new-instance p2, Lcom/sun/script/javascript/JSAdapter;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sun/script/javascript/JSAdapter;-><init>(Lorg/mozilla/javascript/Scriptable;)V

    return-object p2

    :cond_0
    const-string p1, "JSAdapter requires adaptee"

    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "TypeError: not a constructor"

    .line 9
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public delete(I)V
    .locals 4

    const-string v0, "__delete__"

    .line 4
    invoke-direct {p0, v0}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    :goto_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "__delete__"

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    const-string p2, "__get__"

    .line 5
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 8
    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    const-string p2, "__get__"

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAdaptee()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/JSAdapter;->adaptee:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "JSAdapter"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 5

    const-string v0, "__getIds__"

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0, v0, v2}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v3, :cond_0

    .line 6
    invoke-virtual {v0, v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/script/javascript/JSAdapter;->mapToId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    .line 7
    :cond_1
    instance-of v2, v0, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v2, :cond_4

    .line 8
    check-cast v0, Lorg/mozilla/javascript/NativeJavaArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeJavaArray;->unwrap()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 10
    check-cast v0, [Ljava/lang/Object;

    .line 11
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 13
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/sun/script/javascript/JSAdapter;->mapToId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v2, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    :cond_3
    return-object v2

    .line 15
    :cond_4
    sget-object v0, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    return-object v0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/JSAdapter;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/script/javascript/JSAdapter;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    const-string p2, "__has__"

    .line 6
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 10
    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    const-string p2, "__has__"

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 5
    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/sun/script/javascript/JSAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 3

    if-ne p2, p0, :cond_1

    const-string p2, "__put__"

    .line 6
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 9
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    if-ne p2, p0, :cond_1

    const-string p2, "__put__"

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/script/javascript/JSAdapter;->getAdapteeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/sun/script/javascript/JSAdapter;->call(Lorg/mozilla/javascript/Function;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sun/script/javascript/JSAdapter;->getAdaptee()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAdaptee(Lorg/mozilla/javascript/Scriptable;)V
    .locals 1

    const-string v0, "adaptee can not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/sun/script/javascript/JSAdapter;->adaptee:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/javascript/JSAdapter;->parent:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/script/javascript/JSAdapter;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method
