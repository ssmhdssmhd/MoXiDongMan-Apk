.class Lcom/wsw/cospa/model/SearchComicModel$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/model/SearchComicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic for:Lcom/wsw/cospa/model/SearchComicModel;

.field private if:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->for:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/model/SearchComicModel;Lcom/wsw/cospa/model/SearchComicModel$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/SearchComicModel$for;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/SearchComicModel$for;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->if:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->if:Ljava/lang/Boolean;

    return-object v0
.end method

.method public new(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->if:Ljava/lang/Boolean;

    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel$for;->do:Ljava/lang/String;

    return-void
.end method
