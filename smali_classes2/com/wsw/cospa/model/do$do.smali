.class Lcom/wsw/cospa/model/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/do;->default(Lcom/wsw/cospa/bean/ComicSourceBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "\u8bf7\u68c0\u67e5\u6587\u4ef6\u662f\u5426\u662f\u4e3a\u56fe\u6e90\u6587\u4ef6\u6216\u8005\u4e8c\u7ef4\u7801\u5df2\u8fc7\u671f"

    .line 1
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method
