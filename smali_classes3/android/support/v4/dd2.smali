.class public Landroid/support/v4/dd2;
.super Lorg/chromium/net/else$do;
.source "SourceFile"


# static fields
.field private static final package:Ljava/lang/String; = "Accept-Encoding"

.field private static final private:Ljava/lang/String; = "dd2"


# instance fields
.field private final break:Ljava/lang/String;

.field private final catch:Lorg/chromium/net/return$if;

.field private final class:Ljava/util/concurrent/Executor;

.field private const:Ljava/lang/String;

.field private default:I

.field private extends:Lorg/chromium/net/native$do;

.field private final final:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private finally:I

.field private import:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private native:Lorg/chromium/net/public;

.field private public:Ljava/util/concurrent/Executor;

.field private return:Z

.field private static:Z

.field private super:Z

.field private switch:I

.field private final this:Landroid/support/v4/qs;

.field private throw:Z

.field private throws:Z

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;Landroid/support/v4/qs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/else$do;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/dd2;->final:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Landroid/support/v4/dd2;->while:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/support/v4/dd2;->finally:I

    const-string v0, "URL is required."

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback is required."

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor is required."

    .line 7
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CronetEngine is required."

    .line 8
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Landroid/support/v4/dd2;->break:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Landroid/support/v4/dd2;->catch:Lorg/chromium/net/return$if;

    .line 11
    iput-object p3, p0, Landroid/support/v4/dd2;->class:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p4, p0, Landroid/support/v4/dd2;->this:Landroid/support/v4/qs;

    return-void
.end method


# virtual methods
.method public abstract(I)Landroid/support/v4/dd2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dd2;->static:Z

    .line 2
    iput p1, p0, Landroid/support/v4/dd2;->switch:I

    return-object p0
.end method

.method public bridge synthetic break()Lorg/chromium/net/else$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->switch()Landroid/support/v4/dd2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic case(I)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->package(I)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch()Lorg/chromium/net/else;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->throws()Landroid/support/v4/cd2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic class()Lorg/chromium/net/else$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->default()Landroid/support/v4/dd2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic const()Lorg/chromium/net/else$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->extends()Landroid/support/v4/dd2;

    move-result-object v0

    return-object v0
.end method

.method public continue(I)Landroid/support/v4/dd2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dd2;->throws:Z

    .line 2
    iput p1, p0, Landroid/support/v4/dd2;->default:I

    return-object p0
.end method

.method public default()Landroid/support/v4/dd2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dd2;->super:Z

    return-object p0
.end method

.method public bridge synthetic do(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/dd2;->return(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic else(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/dd2;->strictfp(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public extends()Landroid/support/v4/dd2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dd2;->throw:Z

    return-object p0
.end method

.method public final(Ljava/lang/String;)Lorg/chromium/net/else$do;
    .locals 1

    const-string v0, "Method is required."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/support/v4/dd2;->const:Ljava/lang/String;

    return-object p0
.end method

.method public finally(I)Landroid/support/v4/dd2;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/dd2;->finally:I

    return-object p0
.end method

.method public bridge synthetic for()Lorg/chromium/net/return;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->throws()Landroid/support/v4/cd2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goto(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/dd2;->return(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic if()Lorg/chromium/net/return$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->switch()Landroid/support/v4/dd2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic import(I)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->abstract(I)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic native(I)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->continue(I)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new()Lorg/chromium/net/return$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/dd2;->default()Landroid/support/v4/dd2;

    move-result-object v0

    return-object v0
.end method

.method public package(I)Landroid/support/v4/dd2;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/dd2;->while:I

    return-object p0
.end method

.method public private(Lorg/chromium/net/native$do;)Landroid/support/v4/dd2;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/dd2;->extends:Lorg/chromium/net/native$do;

    return-object p0
.end method

.method public bridge synthetic public(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/dd2;->strictfp(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public return(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/dd2;
    .locals 1

    const-string v0, "Invalid header name."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Invalid header value."

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Accept-Encoding"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v4/dd2;->final:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static(Ljava/lang/Object;)Landroid/support/v4/dd2;
    .locals 1

    const-string v0, "Invalid metrics annotation."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/support/v4/dd2;->import:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/dd2;->import:Ljava/util/Collection;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/dd2;->import:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public strictfp(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)Landroid/support/v4/dd2;
    .locals 1

    const-string v0, "Invalid UploadDataProvider."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Invalid UploadDataProvider Executor."

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/support/v4/dd2;->const:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 4
    iput-object v0, p0, Landroid/support/v4/dd2;->const:Ljava/lang/String;

    .line 5
    :cond_0
    iput-object p1, p0, Landroid/support/v4/dd2;->native:Lorg/chromium/net/public;

    .line 6
    iput-object p2, p0, Landroid/support/v4/dd2;->public:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic super(I)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->finally(I)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public switch()Landroid/support/v4/dd2;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/dd2;->return:Z

    return-object p0
.end method

.method public bridge synthetic this(Ljava/lang/Object;)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->static(Ljava/lang/Object;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(I)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->package(I)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method

.method public throws()Landroid/support/v4/cd2;
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/support/v4/dd2;->this:Landroid/support/v4/qs;

    iget-object v1, p0, Landroid/support/v4/dd2;->break:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/dd2;->catch:Lorg/chromium/net/return$if;

    iget-object v3, p0, Landroid/support/v4/dd2;->class:Ljava/util/concurrent/Executor;

    iget v4, p0, Landroid/support/v4/dd2;->while:I

    iget-object v5, p0, Landroid/support/v4/dd2;->import:Ljava/util/Collection;

    iget-boolean v6, p0, Landroid/support/v4/dd2;->super:Z

    iget-boolean v7, p0, Landroid/support/v4/dd2;->throw:Z

    iget-boolean v8, p0, Landroid/support/v4/dd2;->return:Z

    iget-boolean v9, p0, Landroid/support/v4/dd2;->static:Z

    iget v10, p0, Landroid/support/v4/dd2;->switch:I

    iget-boolean v11, p0, Landroid/support/v4/dd2;->throws:Z

    iget v12, p0, Landroid/support/v4/dd2;->default:I

    iget-object v13, p0, Landroid/support/v4/dd2;->extends:Lorg/chromium/net/native$do;

    iget v14, p0, Landroid/support/v4/dd2;->finally:I

    invoke-virtual/range {v0 .. v14}, Landroid/support/v4/qs;->extends(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/native$do;I)Landroid/support/v4/cd2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/dd2;->const:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/cd2;->this(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/dd2;->final:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/cd2;->else(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/support/v4/dd2;->native:Lorg/chromium/net/public;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Landroid/support/v4/dd2;->public:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/cd2;->break(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic try(Ljava/lang/String;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->final(Ljava/lang/String;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic while(Lorg/chromium/net/native$do;)Lorg/chromium/net/else$do;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/dd2;->private(Lorg/chromium/net/native$do;)Landroid/support/v4/dd2;

    move-result-object p1

    return-object p1
.end method
