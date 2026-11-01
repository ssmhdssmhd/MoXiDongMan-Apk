.class public final Lcom/google/common/escape/new$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private for:C

.field private if:C

.field private new:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/new$for;->do:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-char v0, p0, Lcom/google/common/escape/new$for;->if:C

    const v0, 0xffff

    .line 5
    iput-char v0, p0, Lcom/google/common/escape/new$for;->for:C

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/common/escape/new$for;->new:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/escape/new$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/escape/new$for;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/google/common/escape/new$for;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/escape/new$for;->new:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public for()Lcom/google/common/escape/for;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/escape/new$for$do;

    iget-object v1, p0, Lcom/google/common/escape/new$for;->do:Ljava/util/Map;

    iget-char v2, p0, Lcom/google/common/escape/new$for;->if:C

    iget-char v3, p0, Lcom/google/common/escape/new$for;->for:C

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/escape/new$for$do;-><init>(Lcom/google/common/escape/new$for;Ljava/util/Map;CC)V

    return-object v0
.end method

.method public if(CLjava/lang/String;)Lcom/google/common/escape/new$for;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/escape/new$for;->do:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public new(CC)Lcom/google/common/escape/new$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iput-char p1, p0, Lcom/google/common/escape/new$for;->if:C

    .line 2
    iput-char p2, p0, Lcom/google/common/escape/new$for;->for:C

    return-object p0
.end method

.method public try(Ljava/lang/String;)Lcom/google/common/escape/new$for;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/escape/new$for;->new:Ljava/lang/String;

    return-object p0
.end method
