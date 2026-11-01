.class public Landroid/support/v4/a32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lcom/google/common/eventbus/for;

.field private final for:Ljava/lang/Object;

.field private final if:Ljava/lang/Object;

.field private final new:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/for;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/for;

    iput-object p1, p0, Landroid/support/v4/a32;->do:Lcom/google/common/eventbus/for;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a32;->if:Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a32;->for:Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    iput-object p1, p0, Landroid/support/v4/a32;->new:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/a32;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public for()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/a32;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Lcom/google/common/eventbus/for;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/a32;->do:Lcom/google/common/eventbus/for;

    return-object v0
.end method

.method public new()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/a32;->new:Ljava/lang/reflect/Method;

    return-object v0
.end method
