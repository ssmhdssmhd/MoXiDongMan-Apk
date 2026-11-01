.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Web"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private js:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "document.documentElement.outerHTML"

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->js:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->content:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->js:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->js:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->content:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->content:Ljava/lang/String;

    return-object p1
.end method
