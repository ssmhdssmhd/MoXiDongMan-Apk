.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceRule"
.end annotation


# instance fields
.field public elementsRule:Ljava/lang/String;

.field public isCss:Z

.field public replaceRegex:Ljava/lang/String;

.field public replacement:Ljava/lang/String;

.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replaceRegex:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replacement:Ljava/lang/String;

    const-string v0, "@CSS:"

    .line 5
    invoke-static {p2, v0}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    const/4 p1, 0x5

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 9
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    .line 10
    array-length p1, p2

    if-le p1, v1, :cond_1

    .line 11
    aget-object p1, p2, v1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replaceRegex:Ljava/lang/String;

    .line 12
    :cond_1
    array-length p1, p2

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    .line 13
    aget-object p1, p2, v0

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replacement:Ljava/lang/String;

    :cond_2
    return-void
.end method
