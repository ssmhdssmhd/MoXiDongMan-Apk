.class public Lfreemarker/ext/beans/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateHashModelEx;
.implements Lfreemarker/template/AdapterTemplateModel;
.implements Lfreemarker/ext/util/WrapperTemplateModel;
.implements Lfreemarker/template/TemplateModelWithAPISupport;


# static fields
.field public static final case:Lfreemarker/ext/util/ModelFactory;

.field private static final new:Lfreemarker/log/if;

.field public static final try:Lfreemarker/template/TemplateModel;


# instance fields
.field public final do:Ljava/lang/Object;

.field private for:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lfreemarker/template/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lfreemarker/ext/beans/try;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "freemarker.beans"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/new;->new:Lfreemarker/log/if;

    .line 2
    new-instance v0, Landroid/support/v4/ez1;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    .line 3
    new-instance v0, Lfreemarker/ext/beans/new$do;

    invoke-direct {v0}, Lfreemarker/ext/beans/new$do;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/new;->case:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/new;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lfreemarker/ext/beans/try;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Lfreemarker/ext/beans/try;->const()Lfreemarker/ext/beans/class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private else(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/beans/new;->new:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfreemarker/template/utility/super;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found on instance of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Introspection information for the class is: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lfreemarker/log/if;->for(Ljava/lang/String;)V

    return-void
.end method

.method private try(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/new;->for:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    sget-object v2, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    .line 5
    instance-of v3, p1, Lfreemarker/ext/beans/public;

    if-eqz v3, :cond_4

    .line 6
    move-object v2, p1

    check-cast v2, Lfreemarker/ext/beans/public;

    .line 7
    invoke-virtual {v2}, Lfreemarker/ext/beans/public;->do()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    iget-object v4, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v4}, Lfreemarker/ext/beans/try;->default()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lfreemarker/ext/beans/public;->if()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    iget-object p2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    iget-object v3, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v2}, Lfreemarker/ext/beans/public;->if()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p2, v3, v2, v1}, Lfreemarker/ext/beans/try;->abstract(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, Lfreemarker/ext/beans/c;

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    .line 11
    invoke-static {p2, v3}, Lfreemarker/ext/beans/class;->final(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v0, v1, v3, p2, v2}, Lfreemarker/ext/beans/c;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/try;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    iget-object v3, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v2}, Lfreemarker/ext/beans/public;->if()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p2, v3, v2, v1}, Lfreemarker/ext/beans/try;->abstract(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    :goto_1
    move-object v2, p2

    goto :goto_3

    .line 13
    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_5

    .line 14
    iget-object p2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v2, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_3

    .line 15
    :cond_5
    instance-of v1, p1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    .line 16
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    .line 17
    new-instance v1, Lfreemarker/ext/beans/c;

    iget-object v2, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    .line 18
    invoke-static {p2, v0}, Lfreemarker/ext/beans/class;->final(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p2

    iget-object v3, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v1, v2, v0, p2, v3}, Lfreemarker/ext/beans/c;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/try;)V

    move-object v0, v1

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 19
    :cond_6
    instance-of p2, p1, Lfreemarker/ext/beans/continue;

    if-eqz p2, :cond_7

    .line 20
    new-instance v0, Lfreemarker/ext/beans/strictfp;

    iget-object p2, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lfreemarker/ext/beans/continue;

    iget-object v2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v0, p2, v1, v2}, Lfreemarker/ext/beans/strictfp;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/continue;Lfreemarker/ext/beans/try;)V

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget-object p2, p0, Lfreemarker/ext/beans/new;->for:Ljava/util/HashMap;

    if-nez p2, :cond_8

    .line 23
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lfreemarker/ext/beans/new;->for:Ljava/util/HashMap;

    .line 24
    :cond_8
    iget-object p2, p0, Lfreemarker/ext/beans/new;->for:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-object v2

    :catchall_1
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public case()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->const()Lfreemarker/ext/beans/class;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/class;->strictfp(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public do()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lfreemarker/ext/beans/new;->for:Ljava/util/HashMap;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public for()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->const()Lfreemarker/ext/beans/class;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v1}, Lfreemarker/ext/beans/try;->const()Lfreemarker/ext/beans/class;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v2}, Lfreemarker/ext/beans/try;->implements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v2, v1}, Lfreemarker/ext/beans/new;->try(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1, v0, p1}, Lfreemarker/ext/beans/new;->new(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v1, v0, p1}, Lfreemarker/ext/beans/new;->new(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v2, v3}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 9
    sget-object v4, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    if-eq v0, v4, :cond_2

    return-object v0

    .line 10
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 11
    invoke-direct {p0, v4, v1}, Lfreemarker/ext/beans/new;->try(Ljava/lang/Object;Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 12
    sget-object v5, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    if-ne v4, v5, :cond_3

    if-ne v0, v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 13
    :goto_0
    sget-object v2, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    if-ne v0, v2, :cond_7

    .line 14
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->synchronized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    sget-object v0, Lfreemarker/ext/beans/new;->new:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->throw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-direct {p0, p1, v1}, Lfreemarker/ext/beans/new;->else(Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, v3}, Lfreemarker/ext/beans/try;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_6
    new-instance v0, Landroid/support/v4/xn0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such bean property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/xn0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Landroid/support/v4/vl2;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "An error has occurred when reading existing sub-variable "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/fl2;

    invoke-direct {v4, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x2

    const-string v3, "; see cause exception! The type of the containing value was: "

    aput-object v3, v2, p1

    const/4 p1, 0x3

    new-instance v3, Landroid/support/v4/bl2;

    invoke-direct {v3, p0}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    aput-object v3, v2, p1

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p1

    .line 20
    throw p1
.end method

.method public getAPI()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/try;->wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public goto(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    const-string v1, "null"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 3
    :cond_1
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 5
    :cond_2
    instance-of v0, v0, Ljava/util/Iterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->volatile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 7
    :cond_3
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 8
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    :cond_4
    if-eqz v0, :cond_5

    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/m;

    new-instance v1, Lfreemarker/template/return;

    invoke-virtual {p0}, Lfreemarker/ext/beans/new;->case()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v1, v2, v3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v0, v1}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v0
.end method

.method public new(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lfreemarker/template/TemplateModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    sget-object p2, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lfreemarker/ext/beans/new;->try:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p2, v0, p1, v1}, Lfreemarker/ext/beans/try;->abstract(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->const()Lfreemarker/ext/beans/class;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/ext/beans/class;->continue(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public this(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-virtual {v0}, Lfreemarker/ext/beans/try;->throws()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/new;->do:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lfreemarker/ext/beans/new;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/beans/new;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    check-cast v2, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v2}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lfreemarker/ext/beans/new;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lfreemarker/core/m;

    new-instance v2, Lfreemarker/template/return;

    iget-object v3, p0, Lfreemarker/ext/beans/new;->if:Lfreemarker/ext/beans/try;

    invoke-direct {v2, v0, v3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    invoke-direct {v1, v2}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    return-object v1
.end method
