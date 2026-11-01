.class abstract Lfreemarker/ext/beans/volatile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:[I

.field private static final else:[[I


# instance fields
.field private do:[[Ljava/lang/Class;

.field private final for:Ljava/util/Map;

.field private if:[[I

.field private final new:Ljava/util/List;

.field public final try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lfreemarker/ext/beans/volatile;->case:[I

    const/4 v2, 0x1

    new-array v2, v2, [[I

    .line 2
    sput-object v2, Lfreemarker/ext/beans/volatile;->else:[[I

    aput-object v1, v2, v0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x6

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lfreemarker/ext/beans/volatile;->for:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/volatile;->new:Ljava/util/List;

    .line 4
    iput-boolean p1, p0, Lfreemarker/ext/beans/volatile;->try:Z

    return-void
.end method


# virtual methods
.method public final break(I[I)V
    .locals 5

    const-string v0, "srcTypesFlagsByParamIdx"

    .line 1
    invoke-static {v0, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lfreemarker/ext/beans/volatile;->else:[[I

    iput-object p1, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lfreemarker/ext/beans/volatile;->else:[[I

    if-eq p1, p2, :cond_1

    .line 5
    sget-object p2, Lfreemarker/ext/beans/volatile;->case:[I

    aput-object p2, p1, v0

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    if-nez v1, :cond_3

    add-int/lit8 v1, p1, 0x1

    .line 7
    new-array v1, v1, [[I

    iput-object v1, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    goto :goto_1

    .line 8
    :cond_3
    array-length v2, v1

    if-gt v2, p1, :cond_4

    add-int/lit8 v2, p1, 0x1

    .line 9
    new-array v2, v2, [[I

    .line 10
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object v2, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    .line 12
    :cond_4
    :goto_1
    iget-object v1, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    aget-object v2, v1, p1

    if-nez v2, :cond_8

    .line 13
    sget-object v1, Lfreemarker/ext/beans/volatile;->case:[I

    if-eq p2, v1, :cond_7

    .line 14
    array-length v1, p2

    .line 15
    new-array v2, p1, [I

    :goto_2
    if-ge v0, p1, :cond_6

    if-ge v0, v1, :cond_5

    move v3, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v1, -0x1

    .line 16
    :goto_3
    aget v3, p2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 17
    :cond_7
    iget-object p2, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    aput-object v1, p2, p1

    goto :goto_7

    :cond_8
    if-ne p2, v2, :cond_9

    return-void

    .line 18
    :cond_9
    sget-object v3, Lfreemarker/ext/beans/volatile;->case:[I

    if-ne v2, v3, :cond_a

    if-lez p1, :cond_a

    .line 19
    new-array v2, p1, [I

    .line 20
    aput-object v2, v1, p1

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_f

    .line 21
    sget-object v3, Lfreemarker/ext/beans/volatile;->case:[I

    if-eq p2, v3, :cond_c

    .line 22
    array-length v3, p2

    if-ge v1, v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, -0x1

    .line 23
    :goto_5
    aget v3, p2, v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    .line 24
    :goto_6
    aget v4, v2, v1

    if-eq v4, v3, :cond_e

    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x7fc

    if-eqz v4, :cond_d

    or-int/lit8 v3, v3, 0x1

    .line 25
    :cond_d
    aput v3, v2, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    :goto_7
    return-void
.end method

.method public final case([Ljava/lang/Object;Z)Lfreemarker/ext/beans/default;
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/ext/beans/if;

    iget-boolean v1, p0, Lfreemarker/ext/beans/volatile;->try:Z

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/if;-><init>([Ljava/lang/Object;Z)V

    .line 2
    iget-object p1, p0, Lfreemarker/ext/beans/volatile;->for:Ljava/util/Map;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/default;

    if-nez p1, :cond_1

    .line 4
    iget-object v1, p0, Lfreemarker/ext/beans/volatile;->for:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object p1, p0, Lfreemarker/ext/beans/volatile;->for:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/default;

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lfreemarker/ext/beans/volatile;->new:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/beans/if;->new(Ljava/util/List;Z)Lfreemarker/ext/beans/default;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lfreemarker/ext/beans/volatile;->for:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public abstract catch(Lfreemarker/ext/beans/this;)[Ljava/lang/Class;
.end method

.method public do(Lfreemarker/ext/beans/transient;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/volatile;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/volatile;->catch(Lfreemarker/ext/beans/this;)[Ljava/lang/Class;

    move-result-object p1

    .line 3
    array-length v0, p1

    .line 4
    iget-object v1, p0, Lfreemarker/ext/beans/volatile;->do:[[Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 5
    new-array v1, v1, [[Ljava/lang/Class;

    iput-object v1, p0, Lfreemarker/ext/beans/volatile;->do:[[Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_1

    .line 7
    :cond_0
    array-length v3, v1

    if-gt v3, v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    .line 8
    new-array v3, v3, [[Ljava/lang/Class;

    .line 9
    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v3, p0, Lfreemarker/ext/beans/volatile;->do:[[Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    aput-object v1, v3, v0

    goto :goto_1

    .line 12
    :cond_1
    aget-object v3, v1, v0

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 15
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {p0, v4, v5}, Lfreemarker/ext/beans/volatile;->new(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    sget-object v1, Lfreemarker/ext/beans/volatile;->case:[I

    .line 17
    iget-boolean v3, p0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz v3, :cond_7

    :goto_2
    if-ge v2, v0, :cond_6

    .line 18
    aget-object v3, p1, v2

    invoke-static {v3}, Lfreemarker/ext/beans/g;->do(Ljava/lang/Class;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    sget-object v4, Lfreemarker/ext/beans/volatile;->case:[I

    if-ne v1, v4, :cond_4

    .line 20
    new-array v1, v0, [I

    .line 21
    :cond_4
    aput v3, v1, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p0, v0, v1}, Lfreemarker/ext/beans/volatile;->break(I[I)V

    .line 23
    :cond_7
    iget-boolean v2, p0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lfreemarker/ext/beans/volatile;->do:[[Ljava/lang/Class;

    aget-object p1, p1, v0

    :goto_3
    invoke-virtual {p0, p1, v1}, Lfreemarker/ext/beans/volatile;->if([Ljava/lang/Class;[I)V

    return-void
.end method

.method public else()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/volatile;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public for([Ljava/lang/Object;[Ljava/lang/Class;[I)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-ge v2, v0, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 3
    :goto_1
    aget v4, p3, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 4
    aget-object v4, p1, v2

    .line 5
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 6
    aget-object v3, p2, v3

    .line 7
    check-cast v4, Ljava/lang/Number;

    iget-boolean v5, p0, Lfreemarker/ext/beans/volatile;->try:Z

    invoke-static {v4, v3, v5}, Lfreemarker/ext/beans/try;->class(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    aput-object v3, p1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final goto(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/volatile;->if:[[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract if([Ljava/lang/Class;[I)V
.end method

.method public new(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-boolean v1, p0, Lfreemarker/ext/beans/volatile;->try:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, Lfreemarker/template/utility/if;->while(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {p2}, Lfreemarker/template/utility/if;->while(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ne p1, p2, :cond_3

    return-object p1

    .line 7
    :cond_3
    const-class v5, Ljava/lang/Number;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-class v5, Ljava/lang/Number;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    const-class p1, Ljava/lang/Number;

    return-object p1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v4, :cond_d

    :cond_5
    return-object v0

    .line 9
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_7

    const-class p2, Ljava/lang/Byte;

    goto :goto_2

    .line 11
    :cond_7
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_8

    const-class p2, Ljava/lang/Short;

    goto :goto_2

    .line 12
    :cond_8
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_9

    const-class p2, Ljava/lang/Character;

    goto :goto_2

    .line 13
    :cond_9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_a

    const-class p2, Ljava/lang/Integer;

    goto :goto_2

    .line 14
    :cond_a
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_b

    const-class p2, Ljava/lang/Float;

    goto :goto_2

    .line 15
    :cond_b
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_c

    const-class p2, Ljava/lang/Long;

    goto :goto_2

    .line 16
    :cond_c
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_d

    const-class p2, Ljava/lang/Double;

    .line 17
    :cond_d
    :goto_2
    invoke-static {p1, p2}, Lfreemarker/ext/beans/j;->if(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 18
    invoke-static {p2, p1}, Lfreemarker/ext/beans/j;->if(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    return-object v0

    .line 20
    :cond_e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 25
    invoke-static {v5, v1, v3, v3}, Lfreemarker/ext/beans/j;->else(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_3

    .line 26
    :cond_10
    invoke-static {v1, v5, v3, v3}, Lfreemarker/ext/beans/j;->else(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v5

    if-eqz v5, :cond_f

    .line 27
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 28
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_17

    .line 30
    iget-boolean p2, p0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz p2, :cond_16

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_13

    if-eq v1, v0, :cond_14

    return-object v1

    .line 34
    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 35
    :cond_15
    const-class p2, Ljava/lang/Cloneable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_17

    .line 37
    const-class p2, Ljava/io/Serializable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_17

    .line 39
    const-class p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_17

    :cond_16
    return-object v0

    .line 41
    :cond_17
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public this()[[Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/volatile;->do:[[Ljava/lang/Class;

    return-object v0
.end method

.method public abstract try(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/extends;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method
