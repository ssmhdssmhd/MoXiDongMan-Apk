.class Lcom/google/common/reflect/break$if;
.super Lcom/google/common/reflect/try$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/break;->constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/try$do<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/reflect/break;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$if;->new:Lcom/google/common/reflect/break;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/try$do;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/reflect/break;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$if;->new:Lcom/google/common/reflect/break;

    return-object v0
.end method

.method public import()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$if;->new:Lcom/google/common/reflect/break;

    invoke-static {v0}, Lcom/google/common/reflect/break;->access$000(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/this;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/try$do;->import()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/this;->break(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public throw()[Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$if;->new:Lcom/google/common/reflect/break;

    invoke-static {v0}, Lcom/google/common/reflect/break;->access$000(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/this;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/try$do;->throw()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/this;->class([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/reflect/break$if;->do()Lcom/google/common/reflect/break;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/final;->throw(Ljava/lang/String;)Lcom/google/common/base/final;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/reflect/break$if;->while()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/final;->final([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while()[Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$if;->new:Lcom/google/common/reflect/break;

    invoke-static {v0}, Lcom/google/common/reflect/break;->access$100(Lcom/google/common/reflect/break;)Lcom/google/common/reflect/this;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/try$do;->while()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/this;->class([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
