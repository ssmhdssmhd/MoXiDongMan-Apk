.class public Lcom/wsw/cospa/utils/DialogTool$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/DialogTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/DialogTool$for;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/DialogTool$for;->for:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/utils/DialogTool$for;->if:Ljava/lang/String;

    return-void
.end method
