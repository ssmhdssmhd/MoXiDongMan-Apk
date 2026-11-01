.class Lfreemarker/ext/jsp/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/jsp/JspApplicationContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/for$do;
    }
.end annotation


# static fields
.field private static final new:Lfreemarker/log/if;

.field private static final try:Ljavax/el/ExpressionFactory;


# instance fields
.field private final do:Ljava/util/LinkedList;

.field private final for:Ljavax/el/CompositeELResolver;

.field private final if:Ljavax/el/CompositeELResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.jsp"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/for;->new:Lfreemarker/log/if;

    .line 2
    invoke-static {}, Lfreemarker/ext/jsp/for;->case()Ljavax/el/ExpressionFactory;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/for;->try:Ljavax/el/ExpressionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/for;->do:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljavax/el/CompositeELResolver;

    invoke-direct {v0}, Ljavax/el/CompositeELResolver;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/for;->if:Ljavax/el/CompositeELResolver;

    .line 4
    new-instance v1, Ljavax/el/CompositeELResolver;

    invoke-direct {v1}, Ljavax/el/CompositeELResolver;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/for;->for:Ljavax/el/CompositeELResolver;

    .line 5
    new-instance v2, Ljavax/servlet/jsp/el/ImplicitObjectELResolver;

    invoke-direct {v2}, Ljavax/servlet/jsp/el/ImplicitObjectELResolver;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 6
    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 7
    new-instance v1, Ljavax/el/MapELResolver;

    invoke-direct {v1}, Ljavax/el/MapELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 8
    new-instance v1, Ljavax/el/ResourceBundleELResolver;

    invoke-direct {v1}, Ljavax/el/ResourceBundleELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 9
    new-instance v1, Ljavax/el/ListELResolver;

    invoke-direct {v1}, Ljavax/el/ListELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 10
    new-instance v1, Ljavax/el/ArrayELResolver;

    invoke-direct {v1}, Ljavax/el/ArrayELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 11
    new-instance v1, Ljavax/el/BeanELResolver;

    invoke-direct {v1}, Ljavax/el/BeanELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 12
    new-instance v1, Ljavax/servlet/jsp/el/ScopedAttributeELResolver;

    invoke-direct {v1}, Ljavax/servlet/jsp/el/ScopedAttributeELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    return-void
.end method

.method private static case()Ljavax/el/ExpressionFactory;
    .locals 4

    const-string v0, "com.sun"

    .line 1
    invoke-static {v0}, Lfreemarker/ext/jsp/for;->goto(Ljava/lang/String;)Ljavax/el/ExpressionFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "org.apache"

    .line 2
    invoke-static {v0}, Lfreemarker/ext/jsp/for;->goto(Ljava/lang/String;)Ljavax/el/ExpressionFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v1, Lfreemarker/ext/jsp/for;->new:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find any implementation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljavax/el/ExpressionFactory;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic do(Lfreemarker/ext/jsp/for;)Ljavax/el/CompositeELResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jsp/for;->if:Ljavax/el/CompositeELResolver;

    return-object p0
.end method

.method private static goto(Ljava/lang/String;)Ljavax/el/ExpressionFactory;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".el.ExpressionFactoryImpl"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lfreemarker/template/utility/if;->try(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Ljavax/el/ExpressionFactory;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lfreemarker/ext/jsp/for;->new:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as implementation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljavax/el/ExpressionFactory;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lfreemarker/log/if;->const(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/el/ExpressionFactory;

    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lfreemarker/ext/jsp/for;->new:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljavax/el/ExpressionFactory;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lfreemarker/ext/jsp/for;->new:Lfreemarker/log/if;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic if()Ljavax/el/ExpressionFactory;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/for;->try:Ljavax/el/ExpressionFactory;

    return-object v0
.end method


# virtual methods
.method public else()Ljavax/el/ExpressionFactory;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/ext/jsp/for;->try:Ljavax/el/ExpressionFactory;

    return-object v0
.end method

.method public for(Ljavax/el/ELContextListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/for;->do:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jsp/for;->do:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public new(Ljavax/el/ELResolver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/for;->for:Ljavax/el/CompositeELResolver;

    invoke-virtual {v0, p1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    return-void
.end method

.method public try(Lfreemarker/ext/jsp/else;)Ljavax/el/ELContext;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/for$do;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/for$do;-><init>(Lfreemarker/ext/jsp/for;Lfreemarker/ext/jsp/else;)V

    .line 2
    new-instance p1, Ljavax/el/ELContextEvent;

    invoke-direct {p1, v0}, Ljavax/el/ELContextEvent;-><init>(Ljavax/el/ELContext;)V

    .line 3
    iget-object v1, p0, Lfreemarker/ext/jsp/for;->do:Ljava/util/LinkedList;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lfreemarker/ext/jsp/for;->do:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/el/ELContextListener;

    .line 6
    invoke-interface {v3, p1}, Ljavax/el/ELContextListener;->contextCreated(Ljavax/el/ELContextEvent;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
