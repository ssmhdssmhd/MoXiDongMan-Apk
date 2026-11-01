.class Lcom/google/common/reflect/break$new;
.super Lcom/google/common/reflect/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/break;->final()Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/reflect/break;

.field public final synthetic if:Lcom/google/common/collect/g1$do;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break;Lcom/google/common/collect/g1$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$new;->for:Lcom/google/common/reflect/break;

    iput-object p2, p0, Lcom/google/common/reflect/break$new;->if:Lcom/google/common/collect/g1$do;

    invoke-direct {p0}, Lcom/google/common/reflect/catch;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/catch;->do([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public for(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$new;->if:Lcom/google/common/collect/g1$do;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/break;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/break;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/break;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/class;->this(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    return-void
.end method

.method public if(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$new;->if:Lcom/google/common/collect/g1$do;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    return-void
.end method

.method public new(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$new;->if:Lcom/google/common/collect/g1$do;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/g1$do;

    return-void
.end method

.method public try(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/catch;->do([Ljava/lang/reflect/Type;)V

    return-void
.end method
