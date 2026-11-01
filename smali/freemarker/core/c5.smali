.class public Lfreemarker/core/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/c5$try;,
        Lfreemarker/core/c5$this;,
        Lfreemarker/core/c5$if;,
        Lfreemarker/core/c5$new;,
        Lfreemarker/core/c5$else;,
        Lfreemarker/core/c5$case;,
        Lfreemarker/core/c5$for;,
        Lfreemarker/core/c5$break;,
        Lfreemarker/core/c5$goto;
    }
.end annotation


# static fields
.field private static break:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final catch:Ljava/lang/Object;

.field private static final else:Ljava/lang/String; = "INSTANCE"

.field private static final goto:Ljava/lang/String; = "build"

.field private static final this:Ljava/lang/String; = "Builder"


# instance fields
.field private case:Z

.field private final do:Ljava/lang/String;

.field private final for:Z

.field private final if:Ljava/lang/Class;

.field private final new:Landroid/support/v4/sl2;

.field private try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ZLandroid/support/v4/sl2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lfreemarker/core/c5;->case:Z

    .line 3
    iput-object p1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    .line 4
    iput p2, p0, Lfreemarker/core/c5;->try:I

    .line 5
    iput-object p3, p0, Lfreemarker/core/c5;->if:Ljava/lang/Class;

    .line 6
    iput-boolean p4, p0, Lfreemarker/core/c5;->for:Z

    .line 7
    iput-object p5, p0, Lfreemarker/core/c5;->new:Landroid/support/v4/sl2;

    return-void
.end method

.method private static declared-synchronized abstract(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lfreemarker/core/c5;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    .line 3
    const-class v2, Lfreemarker/template/this;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 4
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/ext/beans/try;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 5
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/template/public;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 6
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Landroid/support/v4/h52;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 7
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/final;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 8
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/case;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 9
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/try;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 10
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/super;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 11
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/do;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 12
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/const;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 13
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/class;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 14
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/new;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 15
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/this;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 16
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/goto;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 17
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/core/q0;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 18
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/core/u4;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 19
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/core/v4;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 20
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/core/j3;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 21
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Landroid/support/v4/wd1;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 22
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Landroid/support/v4/mb2;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 23
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/core/y;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 24
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Ljava/util/Locale;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 25
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-string v2, "TimeZone"

    const-string v3, "freemarker.core._TimeZone"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-string v2, "markup"

    const-string v3, "freemarker.core._Markup"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    const-class v2, Lfreemarker/template/do;

    invoke-static {v1, v2}, Lfreemarker/core/c5;->case(Ljava/util/Map;Ljava/lang/Class;)V

    .line 28
    :cond_0
    sget-object v1, Lfreemarker/core/c5;->break:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 29
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private break()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v1, v0, v1, v0}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/c5;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lfreemarker/core/c5$try; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Lfreemarker/core/c5$try;->rethrowLegacy()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 5
    iget v1, p0, Lfreemarker/core/c5;->try:I

    iget-object v2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lfreemarker/core/c5;->for:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Landroid/support/v4/ol2;

    const-string v1, "Value can\'t be null."

    invoke-direct {v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lfreemarker/core/c5;->if:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance v1, Landroid/support/v4/ol2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The resulting object (of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is not a(n) "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/core/c5;->if:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    return-object v0

    .line 11
    :cond_4
    new-instance v0, Landroid/support/v4/ol2;

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/c5;->try:I

    const-string v3, "end-of-expression"

    invoke-direct {v0, v3, v1, v2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private static case(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static catch(Ljava/lang/String;Ljava/lang/Class;ZLandroid/support/v4/sl2;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v6, Lfreemarker/core/c5;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/c5;-><init>(Ljava/lang/String;ILjava/lang/Class;ZLandroid/support/v4/sl2;)V

    invoke-direct {v6}, Lfreemarker/core/c5;->break()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private class(ZZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    .line 2
    new-instance v1, Lfreemarker/core/c5$if;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/core/c5$if;-><init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2}, Lfreemarker/core/c5$if;->for(Lfreemarker/core/c5$if;Z)Z

    .line 4
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->final(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Landroid/support/v4/ol2;

    iget-object p2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v0, p0, Lfreemarker/core/c5;->try:I

    const-string v1, "class name"

    invoke-direct {p1, v1, p2, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 7
    :cond_1
    invoke-static {v3}, Lfreemarker/core/c5;->abstract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lfreemarker/core/c5$if;->try(Lfreemarker/core/c5$if;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lfreemarker/core/c5$if;->new(Lfreemarker/core/c5$if;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 9
    iput-boolean v2, p0, Lfreemarker/core/c5;->case:Z

    .line 10
    invoke-static {v1, v4}, Lfreemarker/core/c5$if;->for(Lfreemarker/core/c5$if;Z)Z

    .line 11
    :cond_2
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string p1, "("

    .line 12
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->import(Ljava/lang/String;)C

    move-result p1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    const/16 p2, 0x2e

    .line 13
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    .line 14
    invoke-static {v1, v2}, Lfreemarker/core/c5$if;->case(Lfreemarker/core/c5$if;Z)Z

    goto :goto_0

    .line 15
    :cond_3
    iput v0, p0, Lfreemarker/core/c5;->try:I

    .line 16
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 17
    invoke-direct {p0, v1}, Lfreemarker/core/c5;->native(Lfreemarker/core/c5$for;)V

    .line 18
    invoke-static {v1, v4}, Lfreemarker/core/c5$if;->for(Lfreemarker/core/c5$if;Z)Z

    :cond_5
    return-object v1
.end method

.method private const(Ljava/lang/String;Z)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 3
    iget p1, p0, Lfreemarker/core/c5;->try:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/c5;->try:I

    return v0

    :cond_1
    if-eqz p2, :cond_2

    return v2

    .line 4
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    if-eqz v2, :cond_3

    const-string v0, " or "

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v2, 0x1

    .line 7
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_1

    .line 8
    :cond_4
    new-instance p1, Landroid/support/v4/ol2;

    .line 9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-direct {p1, p2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private continue()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/c5;->try:I

    goto :goto_0
.end method

.method private default(C)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->extends(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lfreemarker/core/c5;->throws(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic do(Lfreemarker/core/c5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/core/c5;->case:Z

    return p0
.end method

.method private else(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/c5$this;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/c5$this;-><init>(Lfreemarker/core/c5;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->native(Lfreemarker/core/c5$for;)V

    .line 3
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 4
    invoke-virtual {v0}, Lfreemarker/core/c5$this;->do()Ljava/lang/Object;

    .line 5
    iget p1, p0, Lfreemarker/core/c5;->try:I

    return p1
.end method

.method private extends(C)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x24

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final(Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v2}, Lfreemarker/core/c5;->return(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 4
    iput v0, p0, Lfreemarker/core/c5;->try:I

    return-object v4

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/ol2;

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    const-string v2, "name"

    invoke-direct {p1, v2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 8
    iget v3, p0, Lfreemarker/core/c5;->try:I

    iget-object v5, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v3, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v5, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget v3, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v3, v2

    iput v3, p0, Lfreemarker/core/c5;->try:I

    .line 11
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iput v0, p0, Lfreemarker/core/c5;->try:I

    return-object v4

    :cond_4
    return-object p1
.end method

.method private finally(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->package(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic for(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lfreemarker/core/c5;->abstract(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/lang/String;ILjava/lang/Object;Landroid/support/v4/sl2;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    new-instance v6, Lfreemarker/core/c5;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/c5;-><init>(Ljava/lang/String;ILjava/lang/Class;ZLandroid/support/v4/sl2;)V

    invoke-direct {v6, p2}, Lfreemarker/core/c5;->else(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic if(Lfreemarker/core/c5;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/c5;->private(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private import(Ljava/lang/String;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/c5;->const(Ljava/lang/String;Z)C

    move-result p1

    return p1
.end method

.method private native(Lfreemarker/core/c5$for;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/c5;->case:Z

    .line 2
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string v1, ")"

    .line 3
    invoke-direct {p0, v1}, Lfreemarker/core/c5;->import(Ljava/lang/String;)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_5

    .line 4
    :cond_0
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v1, v0, v1}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object v2

    .line 6
    sget-object v3, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    .line 7
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 8
    instance-of v3, v2, Lfreemarker/core/c5$goto;

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p1, Lfreemarker/core/c5$for;->if:Ljava/util/List;

    check-cast v2, Lfreemarker/core/c5$goto;

    invoke-static {v2}, Lfreemarker/core/c5$goto;->do(Lfreemarker/core/c5$goto;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string v2, "="

    .line 11
    invoke-direct {p0, v2}, Lfreemarker/core/c5;->public(Ljava/lang/String;)C

    .line 12
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 13
    invoke-direct {p0, v1, v1, v0, v0}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lfreemarker/core/c5$for;->for:Ljava/util/List;

    invoke-direct {p0, v1}, Lfreemarker/core/c5;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p1, Lfreemarker/core/c5$for;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1}, Lfreemarker/core/c5$for;->if()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    iget-object v1, p1, Lfreemarker/core/c5$for;->do:Ljava/util/List;

    invoke-direct {p0, v2}, Lfreemarker/core/c5;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_0
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Landroid/support/v4/ol2;

    const-string v0, "Positional parameters not supported here"

    invoke-direct {p1, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Landroid/support/v4/ol2;

    const-string v0, "Positional parameters must precede named parameters"

    invoke-direct {p1, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const-string v1, ",)"

    .line 21
    invoke-direct {p0, v1}, Lfreemarker/core/c5;->public(Ljava/lang/String;)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    :cond_5
    return-void
.end method

.method public static synthetic new(Lfreemarker/core/c5;)Landroid/support/v4/sl2;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/c5;->new:Landroid/support/v4/sl2;

    return-object p0
.end method

.method private package(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "true"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const-string v0, "false"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v0, "null"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1
.end method

.method private private(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object v4, v1

    .line 9
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 10
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "The "

    if-eqz v6, :cond_8

    .line 12
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    if-nez v4, :cond_4

    .line 13
    :try_start_1
    iget-object v4, p0, Lfreemarker/core/c5;->new:Landroid/support/v4/sl2;

    invoke-virtual {v4}, Landroid/support/v4/sl2;->for()Lfreemarker/ext/beans/try;

    move-result-object v4

    invoke-virtual {v4, p1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 14
    instance-of v8, v4, Lfreemarker/template/TemplateHashModel;

    if-eqz v8, :cond_3

    .line 15
    check-cast v4, Lfreemarker/template/TemplateHashModel;

    goto :goto_2

    .line 16
    :cond_3
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " class is not a wrapped as TemplateHashModel."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 19
    instance-of v8, v7, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v8, :cond_5

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v8, p0, Lfreemarker/core/c5;->new:Landroid/support/v4/sl2;

    invoke-virtual {v8}, Landroid/support/v4/sl2;->for()Lfreemarker/ext/beans/try;

    move-result-object v8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    check-cast v7, Lfreemarker/template/TemplateMethodModelEx;

    invoke-interface {v7, v6}, Lfreemarker/template/TemplateMethodModelEx;->exec(Ljava/util/List;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " wasn\'t a TemplateMethodModelEx."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " as FreeMarker method."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Landroid/support/v4/ol2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v5}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 28
    :cond_7
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "JavaBeans property "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {v5}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is set twice."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_8
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " class has no writeable JavaBeans property called "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {v5}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void

    :catch_1
    move-exception p1

    .line 33
    new-instance p2, Landroid/support/v4/ol2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to inspect "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " class"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method private public(Ljava/lang/String;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/c5;->const(Ljava/lang/String;Z)C

    move-result p1

    return p1
.end method

.method private return(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->extends(C)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Landroid/support/v4/ol2;

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    const-string v2, "class name"

    invoke-direct {p1, v2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 4
    :cond_2
    iget p1, p0, Lfreemarker/core/c5;->try:I

    add-int/lit8 v0, p1, 0x1

    .line 5
    iput v0, p0, Lfreemarker/core/c5;->try:I

    .line 6
    :goto_1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->default(C)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    :goto_2
    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget v0, p0, Lfreemarker/core/c5;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/c5;->try:I

    goto :goto_1
.end method

.method private static(Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    iget v5, p0, Lfreemarker/core/c5;->try:I

    iget-object v6, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    if-nez v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/ol2;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/c5;->try:I

    invoke-direct {p1, v0, v1, v2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 4
    :cond_1
    iget-object v5, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v6, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v2, :cond_4

    const/16 v2, 0x72

    if-ne v5, v2, :cond_2

    .line 5
    iget v2, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v2, v7

    iget-object v6, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 6
    iget-object v2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v4, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v4, 0x1

    :cond_2
    const/16 v2, 0x22

    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    const/16 v2, 0x27

    goto :goto_1

    :cond_3
    if-ne v5, v2, :cond_6

    :goto_1
    if-eqz v4, :cond_e

    .line 7
    iget v5, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v5, v7

    iput v5, p0, Lfreemarker/core/c5;->try:I

    goto/16 :goto_5

    :cond_4
    if-nez v3, :cond_d

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_5

    if-nez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    if-ne v5, v2, :cond_b

    .line 8
    :cond_6
    :goto_2
    iget v1, p0, Lfreemarker/core/c5;->try:I

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_7

    .line 9
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_7
    new-instance p1, Landroid/support/v4/ol2;

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    const-string v2, "string literal"

    invoke-direct {p1, v2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 11
    :cond_8
    iget-object p1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    if-eqz v4, :cond_9

    const/4 v2, 0x2

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 12
    :try_start_0
    iget v0, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v0, v7

    iput v0, p0, Lfreemarker/core/c5;->try:I

    if-eqz v4, :cond_a

    goto :goto_4

    .line 13
    :cond_a
    invoke-static {p1}, Lfreemarker/template/utility/super;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object p1

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Landroid/support/v4/ol2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed string literal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_e

    .line 15
    iget-object v5, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v6, p0, Lfreemarker/core/c5;->try:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-eq v5, v6, :cond_c

    const/16 v6, 0x23

    if-eq v5, v6, :cond_c

    goto :goto_5

    .line 16
    :cond_c
    new-instance p1, Landroid/support/v4/ol2;

    const-string v0, "${...} and #{...} aren\'t allowed here."

    invoke-direct {p1, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v3, 0x0

    .line 17
    :cond_e
    :goto_5
    iget v5, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v5, v7

    iput v5, p0, Lfreemarker/core/c5;->try:I

    goto/16 :goto_0
.end method

.method private super(Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lfreemarker/core/c5;->try:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/c5;->try:I

    .line 3
    new-instance v1, Lfreemarker/core/c5$case;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lfreemarker/core/c5$case;-><init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string p1, "]"

    .line 5
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->import(Ljava/lang/String;)C

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lfreemarker/core/c5$case;->for()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ","

    .line 7
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->public(Ljava/lang/String;)C

    .line 8
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/core/c5$case;->if(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Landroid/support/v4/ol2;

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    const-string v2, "["

    invoke-direct {p1, v2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private switch(ZZZZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p3}, Lfreemarker/core/c5;->while(ZZ)Ljava/lang/Object;

    move-result-object p3

    .line 3
    sget-object v1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    if-eq p3, v1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->static(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_1

    return-object p3

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->super(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_2

    return-object p3

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->throw(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_3

    return-object p3

    .line 7
    :cond_3
    invoke-direct {p0, v0, p2}, Lfreemarker/core/c5;->class(ZZ)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_4

    return-object p2

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lfreemarker/core/c5;->return(Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 9
    invoke-direct {p0, p2}, Lfreemarker/core/c5;->package(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_5

    return-object p1

    :cond_5
    if-nez p4, :cond_6

    .line 10
    new-instance p1, Lfreemarker/core/c5$goto;

    invoke-direct {p1, p2}, Lfreemarker/core/c5$goto;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_6
    new-instance p1, Landroid/support/v4/ol2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t resolve variable reference: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz p1, :cond_8

    .line 12
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_8
    new-instance p1, Landroid/support/v4/ol2;

    iget-object p2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget p3, p0, Lfreemarker/core/c5;->try:I

    const-string p4, "value or name"

    invoke-direct {p1, p4, p2, p3}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private this(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/core/c5$break;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/core/c5$break;

    invoke-virtual {p1}, Lfreemarker/core/c5$break;->do()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private throw(Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/core/c5;->try:I

    iget-object v1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lfreemarker/core/c5;->try:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/c5;->try:I

    .line 3
    new-instance v1, Lfreemarker/core/c5$else;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lfreemarker/core/c5$else;-><init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string p1, "}"

    .line 5
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->import(Ljava/lang/String;)C

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lfreemarker/core/c5$else;->for()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ","

    .line 7
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->public(Ljava/lang/String;)C

    .line 8
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    const-string v3, ":"

    .line 11
    invoke-direct {p0, v3}, Lfreemarker/core/c5;->public(Ljava/lang/String;)C

    .line 12
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    .line 13
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/c5;->switch(ZZZZ)Ljava/lang/Object;

    move-result-object p1

    .line 14
    new-instance v3, Lfreemarker/core/c5$new;

    invoke-direct {v3, v2, p1}, Lfreemarker/core/c5$new;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lfreemarker/core/c5$else;->if(Lfreemarker/core/c5$new;)V

    .line 15
    invoke-direct {p0}, Lfreemarker/core/c5;->continue()V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 17
    :cond_4
    new-instance p1, Landroid/support/v4/ol2;

    iget-object v0, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/c5;->try:I

    const-string v2, "{"

    invoke-direct {p1, v2, v0, v1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private throws(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic try(Lfreemarker/core/c5;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/c5;->this(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private while(ZZ)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    const-string v0, "."

    .line 1
    iget v1, p0, Lfreemarker/core/c5;->try:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget v4, p0, Lfreemarker/core/c5;->try:I

    iget-object v5, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2e

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v4, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v5, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 4
    :cond_2
    invoke-direct {p0, v4}, Lfreemarker/core/c5;->throws(C)Z

    move-result v5

    if-nez v5, :cond_15

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_15

    .line 5
    :goto_1
    iget v2, p0, Lfreemarker/core/c5;->try:I

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lfreemarker/core/c5;->catch:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_3
    new-instance p1, Landroid/support/v4/ol2;

    iget-object p2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v0, p0, Lfreemarker/core/c5;->try:I

    const-string v1, "number-like"

    invoke-direct {p1, v1, p2, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 8
    :cond_4
    iget-object p1, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_5

    .line 9
    :try_start_0
    new-instance p2, Landroid/support/v4/we2;

    invoke-direct {p2, p1}, Landroid/support/v4/we2;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 10
    new-instance v0, Landroid/support/v4/ol2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    const/4 v1, 0x0

    .line 11
    :goto_2
    iget v2, p0, Lfreemarker/core/c5;->try:I

    iget-object v3, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 12
    :cond_6
    iget-object v2, p0, Lfreemarker/core/c5;->do:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/c5;->try:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    .line 14
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 15
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_3
    iget v2, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v2, v7

    iput v2, p0, Lfreemarker/core/c5;->try:I

    goto :goto_2

    .line 17
    :cond_8
    :goto_4
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "-."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "+."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    if-nez v1, :cond_d

    .line 19
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 20
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_9

    .line 22
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_a

    .line 23
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_a
    return-object p2

    :cond_b
    if-eqz p2, :cond_c

    .line 24
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 25
    :cond_c
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p2, "l"

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 27
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p2, "bi"

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 29
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_f
    const-string p2, "bd"

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 31
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_10
    const-string p2, "d"

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 33
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p2, "f"

    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 36
    :cond_12
    new-instance p2, Landroid/support/v4/ol2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized number type postfix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_13
    new-instance p2, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t start with a dot"

    invoke-direct {p2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_14
    new-instance p2, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t end with a dot"

    invoke-direct {p2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p2

    .line 39
    new-instance v0, Landroid/support/v4/ol2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 40
    :cond_15
    :goto_5
    iget v4, p0, Lfreemarker/core/c5;->try:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/c5;->try:I

    goto/16 :goto_0
.end method
