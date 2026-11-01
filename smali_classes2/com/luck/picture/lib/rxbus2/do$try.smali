.class Lcom/luck/picture/lib/rxbus2/do$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/rxbus2/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Lcom/luck/picture/lib/rxbus2/do;

.field private if:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/do;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$try;->for:Lcom/luck/picture/lib/rxbus2/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Object;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$try;->for:Lcom/luck/picture/lib/rxbus2/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/luck/picture/lib/rxbus2/do$try;->do:I

    .line 5
    iput-object p3, p0, Lcom/luck/picture/lib/rxbus2/do$try;->if:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/do$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/rxbus2/do$try;-><init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/rxbus2/do$try;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/rxbus2/do$try;->new()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/rxbus2/do$try;->do:I

    return v0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/rxbus2/do$try;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/rxbus2/do$try;->for()I

    move-result p0

    return p0
.end method

.method private new()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do$try;->if:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public case(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/do$try;->if:Ljava/lang/Object;

    return-void
.end method

.method public try(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/rxbus2/do$try;->do:I

    return-void
.end method
