.class public final Lfreemarker/ext/beans/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    if-eq p0, v0, :cond_1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_2

    :cond_1
    return v1

    .line 3
    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v0, :cond_3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_4

    :cond_3
    return v1

    .line 4
    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_5

    if-eq p0, v0, :cond_5

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v5, :cond_6

    :cond_5
    return v1

    .line 5
    :cond_6
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v0, :cond_7

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    :cond_7
    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static case(Ljava/lang/reflect/Member;)[Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, v0}, Lfreemarker/ext/beans/j;->try(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/lang/Object;Lfreemarker/ext/beans/this;Ljava/lang/Throwable;)Landroid/support/v4/k52;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/beans/j$do;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/j$do;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->else()Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->case()Z

    move-result p1

    .line 4
    invoke-static {p0, v0, v1, p1, p2}, Lfreemarker/ext/beans/j;->class(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method private static class(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Landroid/support/v4/k52;
    .locals 6

    .line 1
    :goto_0
    instance-of v0, p4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p4

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/vl2;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {p1, p3}, Lfreemarker/ext/beans/j;->try(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, " threw an exception"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 p1, 0x3

    const/4 v5, 0x2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, " when invoked on "

    aput-object p3, p2, v3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, " object "

    aput-object p3, p2, v5

    new-instance p3, Landroid/support/v4/fl2;

    invoke-direct {p3, p0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object p3, p2, p1

    goto :goto_2

    :cond_2
    :goto_1
    const-string p2, ""

    :goto_2
    aput-object p2, v2, v5

    const-string p0, "; see cause exception in the Java stack trace."

    aput-object p0, v2, p1

    invoke-direct {v0, p4, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static const(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Landroid/support/v4/k52;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lfreemarker/ext/beans/j;->class(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Landroid/support/v4/k52;

    move-result-object p0

    return-object p0
.end method

.method private static do(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0, p1, p2}, Lfreemarker/ext/beans/j;->do(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 7
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lfreemarker/ext/beans/j;->do(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static else(Ljava/lang/Class;Ljava/lang/Class;ZI)I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v2, :cond_a

    if-eqz v3, :cond_5

    if-lt p3, v4, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-static {p0, p1}, Lfreemarker/ext/beans/j;->break(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x3

    :cond_4
    return v1

    :cond_5
    if-eqz p2, :cond_9

    .line 5
    invoke-static {p0}, Lfreemarker/template/utility/if;->while(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p1, :cond_6

    const/4 p0, 0x2

    return p0

    .line 6
    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v0

    :cond_7
    if-lt p3, v4, :cond_8

    return v1

    .line 7
    :cond_8
    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-class p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 9
    invoke-static {p0, p1}, Lfreemarker/ext/beans/j;->this(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 v1, 0x3

    :cond_9
    return v1

    :cond_a
    if-lt p3, v4, :cond_b

    return v1

    :cond_b
    if-eqz p2, :cond_c

    if-nez v3, :cond_c

    .line 10
    const-class p2, Ljava/lang/Number;

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-class p2, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 12
    invoke-static {p0, p1}, Lfreemarker/ext/beans/j;->this(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v1, 0x3

    :cond_c
    return v1
.end method

.method public static final(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be a Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const-string v1, "static "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Lfreemarker/ext/beans/j;->new(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_6

    if-eqz v3, :cond_4

    const-string v4, ", "

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    aget-object v4, v1, v3

    invoke-static {v4}, Lfreemarker/template/utility/if;->break(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 15
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lfreemarker/ext/beans/j;->goto(Ljava/lang/reflect/Member;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 p0, 0x29

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "get"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-string p1, "is"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    return-object v1
.end method

.method public static goto(Ljava/lang/reflect/Member;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance p0, Landroid/support/v4/mc;

    invoke-direct {p0}, Landroid/support/v4/mc;-><init>()V

    throw p0
.end method

.method public static if(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lfreemarker/ext/beans/j;->do(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    return-object v0
.end method

.method public static new(Ljava/lang/reflect/Member;)[Ljava/lang/Class;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static this(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Short;

    const/4 v5, 0x1

    if-ne p1, v4, :cond_0

    if-ne p0, v3, :cond_0

    return v5

    :cond_0
    if-ne p1, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-ne p0, v3, :cond_2

    :cond_1
    return v5

    :cond_2
    if-ne p1, v1, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_3

    if-ne p0, v3, :cond_4

    :cond_3
    return v5

    :cond_4
    if-ne p1, v0, :cond_6

    if-eq p0, v1, :cond_5

    if-eq p0, v2, :cond_5

    if-eq p0, v4, :cond_5

    if-ne p0, v3, :cond_6

    :cond_5
    return v5

    .line 2
    :cond_6
    const-class v6, Ljava/lang/Double;

    if-ne p1, v6, :cond_8

    if-eq p0, v0, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_7

    if-ne p0, v3, :cond_8

    :cond_7
    return v5

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static try(Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Java "

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    const-string p1, "constructor "

    goto :goto_0

    :cond_0
    const-string p1, "method "

    :goto_0
    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    .line 1
    new-instance v1, Landroid/support/v4/fl2;

    invoke-direct {v1, p0}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    return-object v0
.end method
