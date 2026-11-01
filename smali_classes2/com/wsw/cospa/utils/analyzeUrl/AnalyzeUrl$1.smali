.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;
.super Ljavax/script/SimpleBindings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$page:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;->val$page:Ljava/lang/Integer;

    invoke-direct {p0}, Ljavax/script/SimpleBindings;-><init>()V

    const-string v0, "searchKey"

    .line 2
    invoke-virtual {p0, v0, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "searchPage"

    .line 3
    invoke-virtual {p0, p2, p3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "java"

    .line 4
    invoke-virtual {p0, p2, p1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
