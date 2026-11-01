.class public Lnet/minidev/json/reader/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/reader/try$native;
    }
.end annotation


# static fields
.field public static final break:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final case:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAware;",
            ">;"
        }
    .end annotation
.end field

.field public static final catch:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final class:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final const:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final for:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final goto:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final new:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONStreamAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public static final this:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final try:Lnet/minidev/json/reader/JsonWriterI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/reader/JsonWriterI<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private do:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;>;"
        }
    .end annotation
.end field

.field private if:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/minidev/json/reader/try$native;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/minidev/json/reader/try$break;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$break;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->for:Lnet/minidev/json/reader/JsonWriterI;

    .line 2
    new-instance v0, Lnet/minidev/json/reader/try$catch;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$catch;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->new:Lnet/minidev/json/reader/JsonWriterI;

    .line 3
    new-instance v0, Lnet/minidev/json/reader/try$class;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$class;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->try:Lnet/minidev/json/reader/JsonWriterI;

    .line 4
    new-instance v0, Lnet/minidev/json/reader/try$const;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$const;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->case:Lnet/minidev/json/reader/JsonWriterI;

    .line 5
    new-instance v0, Lnet/minidev/json/reader/try$final;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$final;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->else:Lnet/minidev/json/reader/JsonWriterI;

    .line 6
    new-instance v0, Lnet/minidev/json/reader/try$super;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$super;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->goto:Lnet/minidev/json/reader/JsonWriterI;

    .line 7
    new-instance v0, Lnet/minidev/json/reader/try$throw;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$throw;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->this:Lnet/minidev/json/reader/JsonWriterI;

    .line 8
    new-instance v0, Lnet/minidev/json/reader/for;

    invoke-direct {v0}, Lnet/minidev/json/reader/for;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->break:Lnet/minidev/json/reader/JsonWriterI;

    .line 9
    new-instance v0, Lnet/minidev/json/reader/if;

    invoke-direct {v0}, Lnet/minidev/json/reader/if;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->catch:Lnet/minidev/json/reader/JsonWriterI;

    .line 10
    new-instance v0, Lnet/minidev/json/reader/do;

    invoke-direct {v0}, Lnet/minidev/json/reader/do;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->class:Lnet/minidev/json/reader/JsonWriterI;

    .line 11
    new-instance v0, Lnet/minidev/json/reader/try$while;

    invoke-direct {v0}, Lnet/minidev/json/reader/try$while;-><init>()V

    sput-object v0, Lnet/minidev/json/reader/try;->const:Lnet/minidev/json/reader/JsonWriterI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/minidev/json/reader/try;->if:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p0}, Lnet/minidev/json/reader/try;->try()V

    return-void
.end method

.method public static catch(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3, p0}, Lnet/minidev/json/for;->this(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 4
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    invoke-static {p0, p2, p3}, Lnet/minidev/json/new;->case(Ljava/lang/String;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    .line 6
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    :goto_0
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->class(Ljava/lang/Appendable;)V

    .line 8
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lnet/minidev/json/for;->public(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1, p2, p3}, Lnet/minidev/json/new;->b(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/minidev/json/for;)V

    .line 11
    :goto_1
    invoke-virtual {p3, p2}, Lnet/minidev/json/for;->catch(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/reader/try;->for(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lnet/minidev/json/reader/new;

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Lnet/minidev/json/reader/new;

    invoke-direct {v0}, Lnet/minidev/json/reader/new;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 5
    :cond_0
    check-cast v0, Lnet/minidev/json/reader/new;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/reader/new;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Lnet/minidev/json/reader/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public do(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/try;->goto(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/try;->this(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public for(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/minidev/json/reader/JsonWriterI;

    return-object p1
.end method

.method public goto(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/try;->if:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/try$native;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/try$native;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public if(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/minidev/json/reader/try;->this(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method

.method public new(Ljava/lang/Class;)Lnet/minidev/json/reader/JsonWriterI;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/minidev/json/reader/JsonWriterI;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/try;->if:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/minidev/json/reader/try$native;

    .line 2
    iget-object v2, v1, Lnet/minidev/json/reader/try$native;->do:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, v1, Lnet/minidev/json/reader/try$native;->if:Lnet/minidev/json/reader/JsonWriterI;

    return-object p1
.end method

.method public this(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/minidev/json/reader/JsonWriterI<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/reader/try;->if:Ljava/util/LinkedList;

    new-instance v1, Lnet/minidev/json/reader/try$native;

    invoke-direct {v1, p1, p2}, Lnet/minidev/json/reader/try$native;-><init>(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public try()V
    .locals 6

    .line 1
    new-instance v0, Lnet/minidev/json/reader/try$import;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/try$import;-><init>(Lnet/minidev/json/reader/try;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lnet/minidev/json/reader/try$do;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/try$do;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    const-class v3, Ljava/lang/Double;

    aput-object v3, v2, v4

    .line 6
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 7
    new-instance v0, Lnet/minidev/json/reader/try$if;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/try$if;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 8
    const-class v3, Ljava/util/Date;

    aput-object v3, v2, v4

    .line 9
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 10
    new-instance v0, Lnet/minidev/json/reader/try$for;

    invoke-direct {v0, p0}, Lnet/minidev/json/reader/try$for;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    const-class v3, Ljava/lang/Float;

    aput-object v3, v2, v4

    .line 12
    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 13
    sget-object v0, Lnet/minidev/json/reader/try;->const:Lnet/minidev/json/reader/JsonWriterI;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v5, Ljava/lang/Byte;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, Ljava/lang/Short;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-class v5, Ljava/math/BigInteger;

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-class v5, Ljava/math/BigDecimal;

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 15
    new-instance v2, Lnet/minidev/json/reader/try$new;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$new;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v3, v1, [Ljava/lang/Class;

    .line 16
    const-class v5, [I

    aput-object v5, v3, v4

    .line 17
    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 18
    new-instance v2, Lnet/minidev/json/reader/try$try;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$try;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v3, v1, [Ljava/lang/Class;

    .line 19
    const-class v5, [S

    aput-object v5, v3, v4

    .line 20
    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 21
    new-instance v2, Lnet/minidev/json/reader/try$case;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$case;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    const-class v5, [J

    aput-object v5, v3, v4

    .line 23
    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 24
    new-instance v2, Lnet/minidev/json/reader/try$else;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$else;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v3, v1, [Ljava/lang/Class;

    .line 25
    const-class v5, [F

    aput-object v5, v3, v4

    .line 26
    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 27
    new-instance v2, Lnet/minidev/json/reader/try$goto;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$goto;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v3, v1, [Ljava/lang/Class;

    .line 28
    const-class v5, [D

    aput-object v5, v3, v4

    .line 29
    invoke-virtual {p0, v2, v3}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 30
    new-instance v2, Lnet/minidev/json/reader/try$this;

    invoke-direct {v2, p0}, Lnet/minidev/json/reader/try$this;-><init>(Lnet/minidev/json/reader/try;)V

    new-array v1, v1, [Ljava/lang/Class;

    .line 31
    const-class v3, [Z

    aput-object v3, v1, v4

    .line 32
    invoke-virtual {p0, v2, v1}, Lnet/minidev/json/reader/try;->case(Lnet/minidev/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    .line 33
    const-class v1, Lnet/minidev/json/JSONStreamAwareEx;

    sget-object v2, Lnet/minidev/json/reader/try;->new:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 34
    const-class v1, Lnet/minidev/json/JSONStreamAware;

    sget-object v2, Lnet/minidev/json/reader/try;->for:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 35
    const-class v1, Lnet/minidev/json/JSONAwareEx;

    sget-object v2, Lnet/minidev/json/reader/try;->try:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 36
    const-class v1, Lnet/minidev/json/JSONAware;

    sget-object v2, Lnet/minidev/json/reader/try;->case:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 37
    const-class v1, Ljava/util/Map;

    sget-object v2, Lnet/minidev/json/reader/try;->this:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 38
    const-class v1, Ljava/lang/Iterable;

    sget-object v2, Lnet/minidev/json/reader/try;->else:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 39
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lnet/minidev/json/reader/try;->goto:Lnet/minidev/json/reader/JsonWriterI;

    invoke-virtual {p0, v1, v2}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    .line 40
    const-class v1, Ljava/lang/Number;

    invoke-virtual {p0, v1, v0}, Lnet/minidev/json/reader/try;->else(Ljava/lang/Class;Lnet/minidev/json/reader/JsonWriterI;)V

    return-void
.end method
