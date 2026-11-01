.class Lcom/google/common/reflect/this$for$do;
.super Lcom/google/common/reflect/this$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/this$for;->do(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/reflect/this$for;

.field public final synthetic if:Ljava/lang/reflect/TypeVariable;

.field public final synthetic new:Lcom/google/common/reflect/this$for;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/this$for;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/this$for$do;->new:Lcom/google/common/reflect/this$for;

    iput-object p2, p0, Lcom/google/common/reflect/this$for$do;->if:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lcom/google/common/reflect/this$for$do;->for:Lcom/google/common/reflect/this$for;

    invoke-direct {p0}, Lcom/google/common/reflect/this$for;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/this$for;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/this$for$do;->if:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/this$for$do;->for:Lcom/google/common/reflect/this$for;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/reflect/this$for;->if(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/this$for;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
