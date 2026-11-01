.class Lcom/jayway/jsonpath/internal/path/RootPathToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/path/PathTokenAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/jsonpath/internal/path/RootPathToken;->getPathTokenAppender()Lcom/jayway/jsonpath/internal/path/PathTokenAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jayway/jsonpath/internal/path/RootPathToken;


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/internal/path/RootPathToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken$1;->this$0:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendPathToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathTokenAppender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/RootPathToken$1;->this$0:Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/internal/path/RootPathToken;->append(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/RootPathToken;

    return-object p0
.end method
