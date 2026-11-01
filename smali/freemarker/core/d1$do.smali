.class Lfreemarker/core/d1$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# static fields
.field private static final const:Ljava/lang/String; = "_has_next"

.field private static final final:Ljava/lang/String; = "_index"


# instance fields
.field private break:Ljava/lang/String;

.field private case:Z

.field private final catch:Lfreemarker/template/TemplateModel;

.field public final synthetic class:Lfreemarker/core/d1;

.field private do:Ljava/lang/Object;

.field private else:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private for:Lfreemarker/template/TemplateModel;

.field private goto:Ljava/lang/String;

.field private if:Z

.field private new:Lfreemarker/template/TemplateModel;

.field private this:Ljava/lang/String;

.field private try:I


# direct methods
.method public constructor <init>(Lfreemarker/core/d1;Lfreemarker/template/TemplateModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    .line 3
    iput-object p2, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    .line 4
    iput-object p3, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    return-void
.end method

.method private for(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 2
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 3
    iget-object v1, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    check-cast v0, Lfreemarker/template/TemplateModelIterator;

    .line 5
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    iget-object v4, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 7
    :cond_1
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    .line 8
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    iput-boolean v4, p0, Lfreemarker/core/d1$do;->if:Z

    .line 9
    :try_start_0
    iget-object v4, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    iput-object v4, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/core/public; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 12
    :try_start_1
    sget-object v5, Lfreemarker/core/public;->BREAK_INSTANCE:Lfreemarker/core/public;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_2

    .line 13
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_2

    .line 14
    :goto_1
    iget v4, p0, Lfreemarker/core/d1$do;->try:I

    add-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/d1$do;->try:I

    .line 15
    iget-boolean v4, p0, Lfreemarker/core/d1$do;->if:Z

    if-nez v4, :cond_1

    .line 16
    :goto_2
    iput-object v3, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    goto :goto_4

    .line 17
    :goto_3
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 18
    throw p1

    .line 19
    :cond_3
    iput-object v0, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V

    :cond_4
    :goto_4
    move v2, v1

    goto/16 :goto_c

    .line 21
    :cond_5
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    .line 22
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    .line 23
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_a

    .line 24
    iget-object v6, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 25
    iput v4, p0, Lfreemarker/core/d1$do;->try:I

    :goto_6
    iget v6, p0, Lfreemarker/core/d1$do;->try:I

    if-ge v6, v1, :cond_a

    .line 26
    invoke-interface {v0, v6}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v6

    iput-object v6, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    .line 27
    iget v6, p0, Lfreemarker/core/d1$do;->try:I

    add-int/2addr v6, v2

    if-le v1, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, p0, Lfreemarker/core/d1$do;->if:Z

    .line 28
    :try_start_2
    iget-object v6, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    iput-object v6, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_2
    .catch Lfreemarker/core/public; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :cond_8
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception v6

    .line 31
    :try_start_3
    sget-object v7, Lfreemarker/core/public;->BREAK_INSTANCE:Lfreemarker/core/public;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v6, v7, :cond_8

    .line 32
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_a

    .line 33
    :goto_8
    iget v6, p0, Lfreemarker/core/d1$do;->try:I

    add-int/2addr v6, v2

    iput v6, p0, Lfreemarker/core/d1$do;->try:I

    goto :goto_6

    .line 34
    :goto_9
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 35
    throw p1

    .line 36
    :cond_9
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V

    :cond_a
    :goto_a
    move v2, v5

    goto :goto_c

    .line 37
    :cond_b
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 39
    iget-object v1, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    iput-object v1, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    .line 40
    iput-boolean v4, p0, Lfreemarker/core/d1$do;->if:Z

    .line 41
    :cond_c
    :try_start_4
    iput-object v0, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_4
    .catch Lfreemarker/core/public; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception p1

    .line 43
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 44
    throw p1

    .line 45
    :catch_2
    :goto_b
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    :goto_c
    return v2

    .line 46
    :cond_d
    iget-object p2, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    instance-of v0, p2, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_e

    .line 47
    invoke-static {p2}, Lfreemarker/core/t2;->isWrappedIterable(Lfreemarker/template/TemplateModel;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 48
    new-instance p2, Lfreemarker/core/t2;

    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The value you try to list is "

    aput-object v3, v1, v4

    new-instance v3, Landroid/support/v4/zk2;

    new-instance v4, Landroid/support/v4/bl2;

    iget-object v5, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    invoke-direct {v4, v5}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v3, v4}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", thus you must specify two loop variables after the \"as\"; one for the key, and another for the value, like "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "<#... as k, v>"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ")."

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    throw p2

    .line 49
    :cond_e
    new-instance p2, Lfreemarker/core/t2;

    iget-object v0, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    .line 50
    invoke-static {v0}, Lfreemarker/core/d1;->t(Lfreemarker/core/d1;)Lfreemarker/core/h0;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    goto :goto_e

    :goto_d
    throw p2

    :goto_e
    goto :goto_d
.end method

.method private if(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    invoke-static {v0}, Lfreemarker/core/d1;->s(Lfreemarker/core/d1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d1$do;->for(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d1$do;->new(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private new(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    .line 3
    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx2;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    if-nez v1, :cond_0

    check-cast v0, Lfreemarker/template/TemplateHashModelEx2;

    .line 5
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    check-cast v0, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    .line 6
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 7
    iget-object v4, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 8
    :cond_1
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getKey()Lfreemarker/template/TemplateModel;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    .line 10
    invoke-interface {v4}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getValue()Lfreemarker/template/TemplateModel;

    move-result-object v4

    iput-object v4, p0, Lfreemarker/core/d1$do;->new:Lfreemarker/template/TemplateModel;

    .line 11
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v4

    iput-boolean v4, p0, Lfreemarker/core/d1$do;->if:Z

    .line 12
    :try_start_0
    iget-object v4, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    iput-object v4, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_0
    .catch Lfreemarker/core/public; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 15
    :try_start_1
    sget-object v5, Lfreemarker/core/public;->BREAK_INSTANCE:Lfreemarker/core/public;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_2

    .line 16
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_2

    .line 17
    :goto_1
    iget v4, p0, Lfreemarker/core/d1$do;->try:I

    add-int/2addr v4, v2

    iput v4, p0, Lfreemarker/core/d1$do;->try:I

    .line 18
    iget-boolean v4, p0, Lfreemarker/core/d1$do;->if:Z

    if-nez v4, :cond_1

    .line 19
    :goto_2
    iput-object v3, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    goto :goto_7

    .line 20
    :goto_3
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 21
    throw p1

    .line 22
    :cond_3
    iput-object v0, p0, Lfreemarker/core/d1$do;->do:Ljava/lang/Object;

    .line 23
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V

    goto :goto_7

    .line 24
    :cond_4
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v1

    invoke-interface {v1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 26
    iget-object v5, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 27
    :cond_5
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    .line 28
    instance-of v6, v5, Lfreemarker/template/TemplateScalarModel;

    if-eqz v6, :cond_7

    .line 29
    check-cast v5, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v5}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/d1$do;->new:Lfreemarker/template/TemplateModel;

    .line 30
    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v5

    iput-boolean v5, p0, Lfreemarker/core/d1$do;->if:Z

    .line 31
    :try_start_2
    iget-object v5, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    iput-object v5, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V
    :try_end_2
    .catch Lfreemarker/core/public; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :cond_6
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception v5

    .line 34
    :try_start_3
    sget-object v6, Lfreemarker/core/public;->BREAK_INSTANCE:Lfreemarker/core/public;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v6, :cond_6

    .line 35
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    goto :goto_6

    .line 36
    :goto_4
    iget v5, p0, Lfreemarker/core/d1$do;->try:I

    add-int/2addr v5, v2

    iput v5, p0, Lfreemarker/core/d1$do;->try:I

    .line 37
    iget-boolean v5, p0, Lfreemarker/core/d1$do;->if:Z

    if-nez v5, :cond_5

    goto :goto_6

    .line 38
    :goto_5
    iput-object v3, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    .line 39
    throw p1

    .line 40
    :cond_7
    iget-object p1, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    check-cast p1, Lfreemarker/template/TemplateHashModelEx;

    invoke-static {v5, p1}, Lfreemarker/core/b5;->public(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateHashModelEx;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1

    .line 41
    :cond_8
    invoke-virtual {p1, p2}, Lfreemarker/core/d0;->A3([Lfreemarker/core/b4;)V

    :cond_9
    :goto_6
    move v1, v4

    :cond_a
    :goto_7
    return v1

    .line 42
    :cond_b
    instance-of p2, v0, Lfreemarker/template/TemplateCollectionModel;

    if-nez p2, :cond_d

    instance-of p2, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p2, :cond_c

    goto :goto_8

    .line 43
    :cond_c
    new-instance p2, Lfreemarker/core/j2;

    iget-object v0, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    .line 44
    invoke-static {v0}, Lfreemarker/core/d1;->t(Lfreemarker/core/d1;)Lfreemarker/core/h0;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    invoke-direct {p2, v0, v1, p1}, Lfreemarker/core/j2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw p2

    .line 45
    :cond_d
    :goto_8
    new-instance p2, Lfreemarker/core/t2;

    new-instance v0, Lfreemarker/core/z4;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The value you try to list is "

    aput-object v4, v1, v3

    new-instance v3, Landroid/support/v4/zk2;

    new-instance v4, Landroid/support/v4/bl2;

    iget-object v5, p0, Lfreemarker/core/d1$do;->catch:Lfreemarker/template/TemplateModel;

    invoke-direct {v4, v5}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v3, v4}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", thus you must specify only one loop variable after the \"as\" (there\'s no separate key and value)."

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lfreemarker/core/z4;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p1, v0}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/d0;Lfreemarker/core/z4;)V

    goto :goto_a

    :goto_9
    throw p2

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d1$do;->if:Z

    return v0
.end method

.method public do(Lfreemarker/core/d0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    invoke-virtual {v0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/d1$do;->if(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z

    move-result p1

    return p1
.end method

.method public else(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    if-eqz v2, :cond_4

    const/4 v0, 0x6

    if-eq v2, v0, :cond_3

    const/16 v0, 0x9

    if-eq v2, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "_has_next"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5
    iget-boolean p1, p0, Lfreemarker/core/d1$do;->if:Z

    if-eqz p1, :cond_2

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_0

    :cond_2
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_0
    return-object p1

    :cond_3
    const-string v0, "_index"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7
    new-instance p1, Landroid/support/v4/az1;

    iget v0, p0, Lfreemarker/core/d1$do;->try:I

    invoke-direct {p1, v0}, Landroid/support/v4/az1;-><init>(I)V

    return-object p1

    .line 8
    :cond_4
    iget-object p1, p0, Lfreemarker/core/d1$do;->for:Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_5

    move-object v1, p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    .line 9
    invoke-virtual {p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/do;->y1()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Lfreemarker/core/y2;->do:Lfreemarker/core/y2;

    :goto_1
    return-object v1

    .line 10
    :cond_7
    :goto_2
    iget-object v0, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 11
    iget-object p1, p0, Lfreemarker/core/d1$do;->new:Lfreemarker/template/TemplateModel;

    if-eqz p1, :cond_8

    move-object v1, p1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lfreemarker/core/d1$do;->class:Lfreemarker/core/d1;

    .line 12
    invoke-virtual {p1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/do;->y1()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    sget-object v1, Lfreemarker/core/y2;->do:Lfreemarker/core/y2;

    :cond_a
    :goto_3
    return-object v1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1$do;->this:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_has_next"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lfreemarker/core/d1$do;->else:Ljava/util/Collection;

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public goto(Lfreemarker/core/d0;[Lfreemarker/core/b4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/core/d1$do;->case:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lfreemarker/core/d1$do;->case:Z

    .line 3
    iput-object p3, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1, p2}, Lfreemarker/core/d1$do;->if(Lfreemarker/core/d0;[Lfreemarker/core/b4;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v0, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance p2, Landroid/support/v4/nl2;

    const-string p3, "The #items directive was already entered earlier for this listing."

    invoke-direct {p2, p1, p3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 9
    iput-object v0, p0, Lfreemarker/core/d1$do;->goto:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lfreemarker/core/d1$do;->break:Ljava/lang/String;

    .line 11
    throw p1
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/d1$do;->try:I

    return v0
.end method
