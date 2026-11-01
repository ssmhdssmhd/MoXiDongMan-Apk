.class public abstract Landroid/support/v4/is0;
.super Lorg/antlr/v4/runtime/this;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/TokenSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/this<",
        "Ljava/lang/Integer;",
        "Landroid/support/v4/ks0;",
        ">;",
        "Lorg/antlr/v4/runtime/TokenSource;"
    }
.end annotation


# static fields
.field public static final default:I = 0x0

.field public static final extends:I = 0x10ffff

.field public static final public:I = 0x0

.field public static final return:I = -0x2

.field public static final static:I = -0x3

.field public static final switch:I = 0x0

.field public static final throws:I = 0x1


# instance fields
.field public break:Lorg/antlr/v4/runtime/Token;

.field public catch:I

.field public class:I

.field public const:I

.field public else:Lorg/antlr/v4/runtime/CharStream;

.field public final:Z

.field public goto:Landroid/support/v4/ob1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ob1<",
            "Lorg/antlr/v4/runtime/TokenSource;",
            "Lorg/antlr/v4/runtime/CharStream;",
            ">;"
        }
    .end annotation
.end field

.field public import:I

.field public native:Ljava/lang/String;

.field public super:I

.field public this:Lorg/antlr/v4/runtime/TokenFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation
.end field

.field public throw:I

.field public final while:Landroid/support/v4/gn0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/this;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v4/gp;->if:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/support/v4/is0;->catch:I

    .line 4
    new-instance v0, Landroid/support/v4/gn0;

    invoke-direct {v0}, Landroid/support/v4/gn0;-><init>()V

    iput-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/support/v4/is0;->import:I

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/CharStream;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/antlr/v4/runtime/this;-><init>()V

    .line 7
    sget-object v0, Landroid/support/v4/gp;->if:Lorg/antlr/v4/runtime/TokenFactory;

    iput-object v0, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/support/v4/is0;->catch:I

    .line 9
    new-instance v0, Landroid/support/v4/gn0;

    invoke-direct {v0}, Landroid/support/v4/gn0;-><init>()V

    iput-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/support/v4/is0;->import:I

    .line 11
    iput-object p1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    .line 12
    new-instance v0, Landroid/support/v4/ob1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/is0;->goto:Landroid/support/v4/ob1;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/is0;->throw:I

    return v0
.end method

.method public abstract()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/is0;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/is0;->nextToken()Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/is0;->import:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    iput v0, p0, Landroid/support/v4/is0;->throw:I

    return-void
.end method

.method public continue()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/is0;->super:I

    return v0
.end method

.method public d(Landroid/support/v4/ss0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    iget v1, p0, Landroid/support/v4/is0;->catch:I

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/rn0;->case(II)Landroid/support/v4/rn0;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/CharStream;->getText(Landroid/support/v4/rn0;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token recognition error at: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v4/is0;->transient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->try()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v2

    .line 4
    iget v5, p0, Landroid/support/v4/is0;->class:I

    iget v6, p0, Landroid/support/v4/is0;->const:I

    const/4 v4, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-interface/range {v2 .. v8}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/this;Ljava/lang/Object;IILjava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/do;->class()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Landroid/support/v4/gn0;->static()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/is0;->b(I)V

    .line 3
    iget v0, p0, Landroid/support/v4/is0;->import:I

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    iget v1, p0, Landroid/support/v4/is0;->import:I

    invoke-virtual {v0, v1}, Landroid/support/v4/gn0;->switch(I)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/is0;->b(I)V

    return-void
.end method

.method public finally()Lorg/antlr/v4/runtime/Token;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    iget-object v1, p0, Landroid/support/v4/is0;->goto:Landroid/support/v4/ob1;

    iget v2, p0, Landroid/support/v4/is0;->throw:I

    iget-object v3, p0, Landroid/support/v4/is0;->native:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/is0;->super:I

    iget v5, p0, Landroid/support/v4/is0;->catch:I

    invoke-virtual {p0}, Landroid/support/v4/is0;->interface()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/support/v4/is0;->class:I

    iget v8, p0, Landroid/support/v4/is0;->const:I

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v4/is0;->package(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public g(Landroid/support/v4/ss0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ks0;

    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-virtual {p1, v0}, Landroid/support/v4/ks0;->static(Lorg/antlr/v4/runtime/CharStream;)V

    :cond_0
    return-void
.end method

.method public getCharPositionInLine()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    invoke-virtual {v0}, Landroid/support/v4/ks0;->finally()I

    move-result v0

    return v0
.end method

.method public getInputStream()Lorg/antlr/v4/runtime/CharStream;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    invoke-virtual {v0}, Landroid/support/v4/ks0;->continue()I

    move-result v0

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "+",
            "Lorg/antlr/v4/runtime/Token;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    return-object v0
.end method

.method public bridge synthetic goto()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/is0;->getInputStream()Lorg/antlr/v4/runtime/CharStream;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/support/v4/ql1;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {p1}, Lorg/antlr/v4/runtime/IntStream;->consume()V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    .line 4
    iput v1, p0, Landroid/support/v4/is0;->throw:I

    .line 5
    iput v1, p0, Landroid/support/v4/is0;->super:I

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Landroid/support/v4/is0;->catch:I

    .line 7
    iput v2, p0, Landroid/support/v4/is0;->const:I

    .line 8
    iput v2, p0, Landroid/support/v4/is0;->class:I

    .line 9
    iput-object v0, p0, Landroid/support/v4/is0;->native:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Landroid/support/v4/is0;->final:Z

    .line 11
    iput v1, p0, Landroid/support/v4/is0;->import:I

    .line 12
    iget-object v0, p0, Landroid/support/v4/is0;->while:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/do;->goto()V

    .line 13
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    invoke-virtual {v0}, Landroid/support/v4/ks0;->goto()V

    return-void
.end method

.method public implements()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public instanceof()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->native:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    iget-object v1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-virtual {v0, v1}, Landroid/support/v4/ks0;->interface(Lorg/antlr/v4/runtime/CharStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interface()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/is0;->super:I

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    invoke-virtual {v0, p1}, Landroid/support/v4/ks0;->instanceof(I)V

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ks0;

    invoke-virtual {v0, p1}, Landroid/support/v4/ks0;->synchronized(I)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/is0;->native:Ljava/lang/String;

    return-void
.end method

.method public n(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    return-void
.end method

.method public nextToken()Lorg/antlr/v4/runtime/Token;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->mark()I

    move-result v0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroid/support/v4/is0;->final:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/is0;->private()Lorg/antlr/v4/runtime/Token;

    .line 5
    iget-object v1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_1
    iget-object v2, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/IntStream;->release(I)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_1
    iput-object v1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Landroid/support/v4/is0;->super:I

    .line 9
    iget-object v3, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v3

    iput v3, p0, Landroid/support/v4/is0;->catch:I

    .line 10
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ks0;

    invoke-virtual {v3}, Landroid/support/v4/ks0;->finally()I

    move-result v3

    iput v3, p0, Landroid/support/v4/is0;->const:I

    .line 11
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ks0;

    invoke-virtual {v3}, Landroid/support/v4/ks0;->continue()I

    move-result v3

    iput v3, p0, Landroid/support/v4/is0;->class:I

    .line 12
    iput-object v1, p0, Landroid/support/v4/is0;->native:Ljava/lang/String;

    .line 13
    :cond_1
    iput v2, p0, Landroid/support/v4/is0;->throw:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x3

    .line 14
    :try_start_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ks0;

    iget-object v4, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    iget v5, p0, Landroid/support/v4/is0;->import:I

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/ks0;->transient(Lorg/antlr/v4/runtime/CharStream;I)I

    move-result v3
    :try_end_2
    .catch Landroid/support/v4/ss0; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 15
    :try_start_3
    invoke-virtual {p0, v3}, Landroid/support/v4/is0;->d(Landroid/support/v4/ss0;)V

    .line 16
    invoke-virtual {p0, v3}, Landroid/support/v4/is0;->g(Landroid/support/v4/ss0;)V

    const/4 v3, -0x3

    .line 17
    :goto_2
    iget-object v4, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 18
    iput-boolean v5, p0, Landroid/support/v4/is0;->final:Z

    .line 19
    :cond_2
    iget v4, p0, Landroid/support/v4/is0;->throw:I

    if-nez v4, :cond_3

    iput v3, p0, Landroid/support/v4/is0;->throw:I

    .line 20
    :cond_3
    iget v3, p0, Landroid/support/v4/is0;->throw:I

    if-ne v3, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, -0x2

    if-eq v3, v1, :cond_1

    .line 21
    iget-object v1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/is0;->finally()Lorg/antlr/v4/runtime/Token;

    .line 22
    :cond_5
    iget-object v1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2, v0}, Lorg/antlr/v4/runtime/IntStream;->release(I)V

    throw v1

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nextToken requires a non-null input stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/is0;->throw:I

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, -0x3

    .line 1
    iput v0, p0, Landroid/support/v4/is0;->throw:I

    return-void
.end method

.method public package(Lorg/antlr/v4/runtime/Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    return-void
.end method

.method public private()Lorg/antlr/v4/runtime/Token;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/is0;->getCharPositionInLine()I

    move-result v8

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/is0;->getLine()I

    move-result v7

    .line 3
    iget-object v0, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    iget-object v1, p0, Landroid/support/v4/is0;->goto:Landroid/support/v4/ob1;

    iget-object v2, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v5

    iget-object v2, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    invoke-interface {v2}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v8}, Lorg/antlr/v4/runtime/TokenFactory;->create(Landroid/support/v4/ob1;ILjava/lang/String;IIIII)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v4/is0;->package(Lorg/antlr/v4/runtime/Token;)V

    return-object v0
.end method

.method public protected(I)Ljava/lang/String;
    .locals 2

    int-to-char v0, p1

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\\n"

    goto :goto_0

    :cond_1
    const-string v0, "\\t"

    goto :goto_0

    :cond_2
    const-string v0, "\\r"

    goto :goto_0

    :cond_3
    const-string v0, "<EOF>"

    :goto_0
    return-object v0
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/is0;->this:Lorg/antlr/v4/runtime/TokenFactory;

    return-void
.end method

.method public strictfp()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synchronized()Lorg/antlr/v4/runtime/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/is0;->break:Lorg/antlr/v4/runtime/Token;

    return-object v0
.end method

.method public throw()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public throws(Lorg/antlr/v4/runtime/IntStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    .line 2
    new-instance v1, Landroid/support/v4/ob1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v4/is0;->goto:Landroid/support/v4/ob1;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/is0;->i()V

    .line 4
    check-cast p1, Lorg/antlr/v4/runtime/CharStream;

    iput-object p1, p0, Landroid/support/v4/is0;->else:Lorg/antlr/v4/runtime/CharStream;

    .line 5
    new-instance v0, Landroid/support/v4/ob1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/is0;->goto:Landroid/support/v4/ob1;

    return-void
.end method

.method public transient(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Landroid/support/v4/is0;->protected(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public volatile(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/is0;->protected(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
