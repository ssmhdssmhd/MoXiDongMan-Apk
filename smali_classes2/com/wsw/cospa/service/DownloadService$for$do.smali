.class Lcom/wsw/cospa/service/DownloadService$for$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/service/DownloadService$for;->const()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicContentBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ChapterListBean;

.field public final synthetic if:Lcom/wsw/cospa/service/DownloadService$for;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    iput-object p2, p0, Lcom/wsw/cospa/service/DownloadService$for$do;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicContentBean;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "http"

    const/16 v3, 0x15

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentBean;->getDurContentUrl()Ljava/util/List;

    move-result-object v8

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Lcom/wsw/cospa/dao/DatabaseHelper;->finally(Lcom/wsw/cospa/bean/ComicContentBean;)V

    .line 3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 4
    iget-object v10, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    iget-object v10, v10, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v10}, Lcom/wsw/cospa/service/DownloadService;->else(Lcom/wsw/cospa/service/DownloadService;)Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v11

    iget-object v12, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v12}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/wsw/cospa/model/final;->public(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/Task;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 5
    iget-object v11, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v11}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/wsw/cospa/bean/Task;->setMax(I)V

    .line 6
    iget-object v11, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v11}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 7
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    new-instance v13, Landroid/support/v4/gp1;

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    iget-object v15, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v15}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v15

    invoke-virtual {v15}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-direct {v13, v3, v14}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v13, v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    .line 8
    iget-object v11, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v11}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wsw/cospa/bean/Task;->getProgress()I

    move-result v11

    const/4 v12, 0x2

    :goto_0
    if-ge v11, v9, :cond_5

    .line 9
    iget-object v12, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v12, v11}, Lcom/wsw/cospa/service/DownloadService$for;->new(Lcom/wsw/cospa/service/DownloadService$for;I)V

    .line 10
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/wsw/cospa/bean/ComicContentImgBean;

    const/4 v13, 0x2

    const/4 v14, 0x0

    :goto_1
    add-int/lit8 v21, v14, 0x1

    const/16 v15, 0x14

    if-ge v14, v15, :cond_3

    if-eqz v13, :cond_3

    .line 11
    invoke-virtual {v12}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v15

    .line 12
    iget-object v13, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v13, v15, v12}, Lcom/wsw/cospa/service/DownloadService$for;->try(Lcom/wsw/cospa/service/DownloadService$for;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;)Lokhttp3/Request;

    move-result-object v18

    .line 13
    iget-object v13, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    iget-object v14, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-static {v13}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v16

    add-int/lit8 v22, v11, 0x1

    move-object/from16 p1, v15

    move-object v15, v12

    move-object/from16 v17, v10

    move/from16 v19, v22

    move-object/from16 v20, p1

    invoke-static/range {v13 .. v20}, Lcom/wsw/cospa/service/DownloadService$for;->case(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/bean/Task;Lcom/wsw/cospa/utils/DocumentFile;Lokhttp3/Request;ILjava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 14
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v14

    new-array v15, v7, [Ljava/lang/Object;

    new-instance v2, Landroid/support/v4/gp1;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v6

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x15

    invoke-direct {v2, v4, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v2, v15, v6

    invoke-virtual {v14, v15}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    if-ne v13, v7, :cond_2

    .line 15
    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/wsw/cospa/service/DownloadService$for;->super(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-le v2, v7, :cond_1

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 18
    :goto_2
    iget-object v3, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v3, v2, v12}, Lcom/wsw/cospa/service/DownloadService$for;->try(Lcom/wsw/cospa/service/DownloadService$for;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;)Lokhttp3/Request;

    move-result-object v18

    .line 19
    iget-object v13, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    iget-object v14, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-static {v13}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v16

    move-object v15, v12

    move-object/from16 v17, v10

    move/from16 v19, v22

    move-object/from16 v20, v2

    invoke-static/range {v13 .. v20}, Lcom/wsw/cospa/service/DownloadService$for;->case(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/bean/Task;Lcom/wsw/cospa/utils/DocumentFile;Lokhttp3/Request;ILjava/lang/String;)I

    move-result v2

    move v13, v2

    :cond_2
    :goto_3
    move/from16 v14, v21

    const/16 v3, 0x15

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_3
    const-wide/16 v2, 0x32

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v13, :cond_4

    .line 21
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Landroid/support/v4/gp1;

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    iget-object v12, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v12}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v14, v7

    iget-object v12, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v12}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v5

    const/16 v12, 0x15

    invoke-direct {v4, v12, v14}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    goto :goto_4

    .line 22
    :cond_4
    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    iget-object v3, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    add-int/lit8 v4, v11, 0x1

    invoke-static {v2, v3, v4}, Lcom/wsw/cospa/service/DownloadService$for;->else(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    const/16 v3, 0x15

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    if-nez v12, :cond_8

    .line 23
    iget-object v0, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v0, v9}, Lcom/wsw/cospa/service/DownloadService$for;->new(Lcom/wsw/cospa/service/DownloadService$for;I)V

    goto/16 :goto_5

    .line 24
    :cond_6
    sget-object v0, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    const-string v2, "error : \u65e0\u6cd5\u521b\u5efa\u6f2b\u753b\u76ee\u5f55"

    invoke-static {v0, v2}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v0

    const-string v2, "\u65e0\u6cd5\u521b\u5efa\u6f2b\u753b\u76ee\u5f55\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88\u4e86\u6587\u4ef6\u8bfb\u5199\u6743\u9650\u6216\u8005\u5220\u9664\u56fe\u6e90\u540d\u5bf9\u5e94\u7684\u56fe\u6807\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/gp1;

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v7

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    const/16 v4, 0x15

    invoke-direct {v3, v4, v8}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 27
    :cond_7
    sget-object v0, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    const-string v2, "error : \u83b7\u53d6\u7ae0\u8282\u5931\u8d25"

    invoke-static {v0, v2}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v0

    const-string v2, "\u83b7\u53d6\u7ae0\u8282\u5931\u8d25\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/gp1;

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v7

    iget-object v4, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    const/16 v4, 0x15

    invoke-direct {v3, v4, v8}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 30
    sget-object v2, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v2}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/gp1;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    iget-object v8, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v8}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    iget-object v7, v1, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v7}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/16 v5, 0x15

    invoke-direct {v3, v5, v4}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Landroid/support/v4/gp1;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$for$do;->if:Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/16 v0, 0x15

    invoke-direct {v2, v0, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/service/DownloadService$for$do;->do(Lcom/wsw/cospa/bean/ComicContentBean;)V

    return-void
.end method
