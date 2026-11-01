.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile fieldFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile methodFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lsun/reflect/Reflection;

    const-string v2, "fieldFilterMap"

    const-string v3, "methodFilterMap"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Ljava/lang/System;

    const-string v2, "security"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sput-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can not access a member of class "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with modifiers \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0
.end method

.method private static filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;
    .locals 11

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_6

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_4

    aget-object v5, p0, v2

    .line 3
    array-length v6, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 4
    invoke-interface {v5}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_4
    aget-object v0, p0, v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Member;

    .line 7
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v6, p0, v3

    .line 8
    array-length v7, p1

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_6

    aget-object v9, p1, v8

    .line 9
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    if-ne v10, v9, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    add-int/lit8 v7, v5, 0x1

    .line 10
    aput-object v6, v0, v5

    move v5, v7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v0

    :cond_9
    :goto_6
    return-object p0
.end method

.method public static filterFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static filterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    sget-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static native getCallerClass()Ljava/lang/Class;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1
    invoke-static {}, Lsun/misc/VM;->allowGetCallerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 2
    invoke-static {p0}, Lsun/reflect/Reflection;->getCallerClass0(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method has been disabled by a system property"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native getCallerClass0(I)Ljava/lang/Class;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method private static native getClassAccessFlags(Ljava/lang/Class;)I
.end method

.method public static isCallerSensitive(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lsun/reflect/Reflection;->isExtClassLoader(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    :goto_0
    const-class v0, Lsun/reflect/CallerSensitive;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static isExtClassLoader(Ljava/lang/ClassLoader;)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0, p0, v1, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x2e

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    .line 5
    invoke-virtual {p3, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_9

    if-ne p0, v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v3, "Illegal class name "

    const/16 v4, 0x4c

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_4

    const/4 v1, 0x0

    :cond_2
    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    move v6, v1

    goto :goto_0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_7

    const/4 v1, 0x0

    :cond_5
    add-int/2addr v1, v2

    .line 11
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v5, :cond_5

    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_6

    move v4, v1

    goto :goto_1

    .line 13
    :cond_6
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 v4, 0x0

    :goto_1
    sub-int v5, p2, v6

    sub-int/2addr p0, v4

    if-eq v5, p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    move-object v0, p1

    move v2, v6

    move-object v3, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_9
    :goto_2
    if-ne p2, p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0

    :goto_0
    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static quickCheckMemberAccess(Ljava/lang/Class;I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result p0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0
.end method

.method public static varargs declared-synchronized registerFieldsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2

    const-class v0, Lsun/reflect/Reflection;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    .line 2
    invoke-static {v1, p0, p1}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static varargs registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Filter already registered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs declared-synchronized registerMethodsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2

    const-class v0, Lsun/reflect/Reflection;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    .line 2
    invoke-static {v1, p0, p1}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p1}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 2
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_6

    .line 6
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v3, :cond_5

    .line 7
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    const/4 v3, 0x1

    :cond_5
    if-eqz v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_7

    return v2

    .line 8
    :cond_7
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result p3

    if-eqz p3, :cond_a

    if-nez p2, :cond_8

    move-object p2, p1

    goto :goto_2

    .line 9
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_2
    if-eq p2, p0, :cond_a

    if-nez v3, :cond_9

    .line 10
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    :cond_9
    if-nez v1, :cond_a

    .line 11
    invoke-static {p2, p0}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method
