.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceRule"
.end annotation


# instance fields
.field public mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

.field public rule:Ljava/lang/String;

.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 3
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->Js:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    if-ne p3, p1, :cond_1

    const-string p1, "<js>"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x4

    if-eqz p1, :cond_0

    const-string p1, "<"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string p1, "@web:"

    .line 7
    invoke-static {p2, p1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x5

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->WebView:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "@webm:"

    .line 10
    invoke-static {p2, p1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->WebViewMobile:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 12
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "@XPath:"

    .line 13
    invoke-static {p2, p1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->XPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    const/4 p1, 0x7

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "//"

    .line 16
    invoke-static {p2, p1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->XPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 18
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "@JSon:"

    .line 19
    invoke-static {p2, p1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    const/4 p1, 0x6

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string p1, "$."

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 24
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_7
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    :goto_0
    return-void
.end method
