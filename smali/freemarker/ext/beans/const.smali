.class final Lfreemarker/ext/beans/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final else:Ljava/util/Map;

.field private static final goto:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field private case:Lfreemarker/ext/beans/MethodSorter;

.field private final do:Z

.field private for:Z

.field private if:I

.field private new:Z

.field private try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/const;->else:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/const;->goto:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lfreemarker/ext/beans/const;->if:I

    .line 11
    invoke-static {p1}, Lfreemarker/ext/beans/try;->strictfp(Landroid/support/v4/we2;)Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/ext/beans/const;->do:Z

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/we2;->intValue()I

    move-result p1

    sget v1, Landroid/support/v4/ul2;->this:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lfreemarker/ext/beans/const;->new:Z

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lfreemarker/ext/beans/const;->if:I

    .line 3
    iget-boolean v0, p1, Lfreemarker/ext/beans/class;->case:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/const;->do:Z

    .line 4
    iget v0, p1, Lfreemarker/ext/beans/class;->do:I

    iput v0, p0, Lfreemarker/ext/beans/const;->if:I

    .line 5
    iget-boolean v0, p1, Lfreemarker/ext/beans/class;->if:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/const;->for:Z

    .line 6
    iget-boolean v0, p1, Lfreemarker/ext/beans/class;->try:Z

    iput-boolean v0, p0, Lfreemarker/ext/beans/const;->new:Z

    .line 7
    iget-object v0, p1, Lfreemarker/ext/beans/class;->for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    iput-object v0, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    .line 8
    iget-object p1, p1, Lfreemarker/ext/beans/class;->new:Lfreemarker/ext/beans/MethodSorter;

    iput-object p1, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    return-void
.end method

.method private static break()V
    .locals 4

    .line 1
    :goto_0
    sget-object v0, Lfreemarker/ext/beans/const;->goto:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lfreemarker/ext/beans/const;->else:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 6
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public static if()V
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/ext/beans/const;->else:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static try()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/beans/const;->else:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public case()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-object v0
.end method

.method public catch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/const;->for:Z

    return-void
.end method

.method public class(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lfreemarker/ext/beans/const;->if:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal exposure level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to clone ClassIntrospectorBuilder"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public const(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-void
.end method

.method public do()Lfreemarker/ext/beans/class;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, v0, Lfreemarker/ext/beans/SingletonCustomizer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lfreemarker/ext/beans/SingletonCustomizer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lfreemarker/ext/beans/class;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Lfreemarker/ext/beans/class;-><init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;ZZ)V

    return-object v0

    .line 3
    :cond_2
    :goto_0
    sget-object v0, Lfreemarker/ext/beans/const;->else:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/class;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 6
    invoke-virtual {p0}, Lfreemarker/ext/beans/const;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/const;

    .line 7
    new-instance v3, Lfreemarker/ext/beans/class;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v2, v4, v1, v1}, Lfreemarker/ext/beans/class;-><init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;ZZ)V

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v4, Lfreemarker/ext/beans/const;->goto:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 9
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Lfreemarker/ext/beans/const;->break()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public else()Lfreemarker/ext/beans/MethodSorter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lfreemarker/ext/beans/const;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lfreemarker/ext/beans/const;

    .line 3
    iget-boolean v2, p0, Lfreemarker/ext/beans/const;->do:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/const;->do:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-boolean v2, p0, Lfreemarker/ext/beans/const;->for:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/const;->for:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 5
    :cond_4
    iget-boolean v2, p0, Lfreemarker/ext/beans/const;->new:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/const;->new:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 6
    :cond_5
    iget v2, p0, Lfreemarker/ext/beans/const;->if:I

    iget v3, p1, Lfreemarker/ext/beans/const;->if:I

    if-eq v2, v3, :cond_6

    return v1

    .line 7
    :cond_6
    iget-object v2, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    iget-object v3, p1, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    if-eq v2, v3, :cond_7

    return v1

    .line 8
    :cond_7
    iget-object v2, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    iget-object p1, p1, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    if-eq v2, p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public final(Lfreemarker/ext/beans/MethodSorter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/const;->for:Z

    return v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/const;->new:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/const;->do:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const/16 v3, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v4, p0, Lfreemarker/ext/beans/const;->for:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v4, 0x4d5

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v4, p0, Lfreemarker/ext/beans/const;->new:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lfreemarker/ext/beans/const;->if:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lfreemarker/ext/beans/const;->try:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lfreemarker/ext/beans/const;->case:Lfreemarker/ext/beans/MethodSorter;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/const;->if:I

    return v0
.end method

.method public super(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/beans/const;->new:Z

    return-void
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/const;->do:Z

    return v0
.end method
