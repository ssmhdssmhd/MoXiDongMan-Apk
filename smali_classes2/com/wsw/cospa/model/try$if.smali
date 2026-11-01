.class Lcom/wsw/cospa/model/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/model/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/String;

.field private if:Ljava/lang/String;

.field public final synthetic new:Lcom/wsw/cospa/model/try;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/model/try;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/try$if;->new:Lcom/wsw/cospa/model/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/model/try;Lcom/wsw/cospa/model/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/try$if;-><init>(Lcom/wsw/cospa/model/try;)V

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/model/try$if;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/try$if;->if:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/try$if;->for:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/model/try$if;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/try$if;->do:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/model/try$if;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/try$if;->for:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic new(Lcom/wsw/cospa/model/try$if;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/try$if;->do:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic try(Lcom/wsw/cospa/model/try$if;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/try$if;->if:Ljava/lang/String;

    return-object p0
.end method
