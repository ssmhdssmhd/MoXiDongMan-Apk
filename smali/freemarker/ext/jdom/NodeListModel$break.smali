.class final Lfreemarker/ext/jdom/NodeListModel$break;
.super Lfreemarker/ext/jdom/NodeListModel$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jdom/NodeListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "break"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/ext/jdom/NodeListModel$this;-><init>(Lfreemarker/ext/jdom/NodeListModel$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/jdom/NodeListModel$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/ext/jdom/NodeListModel$break;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/jdom/NodeListModel$this;->operate(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object v0
.end method
