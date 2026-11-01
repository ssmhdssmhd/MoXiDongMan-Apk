.class public Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object v0
.end method

.method public new(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    return-void
.end method
