.class public Lfreemarker/template/TemplateException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/TemplateException$if;,
        Lfreemarker/template/TemplateException$do;,
        Lfreemarker/template/TemplateException$StackTraceWriter;
    }
.end annotation


# static fields
.field private static final this:Ljava/lang/String; = "FTL stack trace (\"~\" means nesting-related):"


# instance fields
.field private blamedExpressionString:Ljava/lang/String;

.field private blamedExpressionStringCalculated:Z

.field private transient case:Ljava/lang/String;

.field private columnNumber:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private transient do:Lfreemarker/core/z4;

.field private transient else:Ljava/lang/Object;

.field private endColumnNumber:Ljava/lang/Integer;

.field private endLineNumber:Ljava/lang/Integer;

.field private final transient for:Lfreemarker/core/h0;

.field private transient goto:Ljava/lang/ThreadLocal;

.field private final transient if:Lfreemarker/core/d0;

.field private lineNumber:Ljava/lang/Integer;

.field private transient new:[Lfreemarker/core/b4;

.field private positionsCalculated:Z

.field private renderedFtlInstructionStackSnapshot:Ljava/lang/String;

.field private renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private templateSourceName:Ljava/lang/String;

.field private transient try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/d0;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 10
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object p3

    .line 11
    :cond_0
    iput-object p3, p0, Lfreemarker/template/TemplateException;->if:Lfreemarker/core/d0;

    .line 12
    iput-object p4, p0, Lfreemarker/template/TemplateException;->for:Lfreemarker/core/h0;

    .line 13
    iput-object p5, p0, Lfreemarker/template/TemplateException;->do:Lfreemarker/core/z4;

    .line 14
    iput-object p1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 15
    invoke-static {p3}, Lfreemarker/core/y4;->this(Lfreemarker/core/d0;)[Lfreemarker/core/b4;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/d0;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/core/z4;)V

    return-void
.end method

.method private case(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V
    .locals 1

    .line 1
    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "FreeMarker template error:"

    .line 2
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getMessageWithoutStackTop()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lfreemarker/template/TemplateException$StackTraceWriter;->println()V

    const-string v0, "----"

    .line 6
    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    const-string v0, "FTL stack trace (\"~\" means nesting-related):"

    .line 7
    invoke-interface {p1, v0}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->print(Ljava/lang/Object;)V

    const-string p2, "----"

    .line 9
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    const/4 p4, 0x1

    :cond_2
    :goto_1
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 10
    invoke-interface {p1}, Lfreemarker/template/TemplateException$StackTraceWriter;->println()V

    const-string p2, "Java stack trace (for programmers):"

    .line 11
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    const-string p2, "----"

    .line 12
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object p3, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    if-nez p3, :cond_3

    .line 15
    new-instance p3, Ljava/lang/ThreadLocal;

    invoke-direct {p3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p3, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    .line 16
    :cond_3
    iget-object p3, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18
    :try_start_2
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :try_start_3
    iget-object p2, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    iget-object p3, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception p3

    .line 21
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p3

    .line 22
    :cond_4
    invoke-interface {p1, p0}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V

    .line 23
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_5

    .line 25
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getRootCause"

    sget-object p4, Landroid/support/v4/vm;->if:[Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    sget-object p4, Landroid/support/v4/vm;->do:[Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_5

    const-string p3, "ServletException root cause: "

    .line 27
    invoke-interface {p1, p3}, Lfreemarker/template/TemplateException$StackTraceWriter;->println(Ljava/lang/Object;)V

    .line 28
    invoke-interface {p1, p2}, Lfreemarker/template/TemplateException$StackTraceWriter;->printStandardStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 29
    :catchall_3
    :cond_5
    :try_start_7
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p2
.end method

.method private do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_5

    .line 3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->for:Lfreemarker/core/h0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v3

    if-lez v3, :cond_4

    .line 5
    invoke-virtual {v1}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    iput-object v4, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v3}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lfreemarker/core/h4;->getBeginLine()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v1}, Lfreemarker/core/h4;->getBeginColumn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    .line 10
    invoke-virtual {v1}, Lfreemarker/core/h4;->getEndLine()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1}, Lfreemarker/core/h4;->getEndColumn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    :cond_4
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    .line 13
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->if()V

    .line 14
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private else()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->for()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No error description was specified for this error; low-level message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "[No error description was available.]"

    .line 7
    iput-object v0, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->new()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FTL stack trace (\"~\" means nesting-related):"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->case:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    iput-object v0, p0, Lfreemarker/template/TemplateException;->case:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private for()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/TemplateException;->do:Lfreemarker/core/z4;

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->try()Lfreemarker/core/b4;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/template/TemplateException;->if:Lfreemarker/core/d0;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lfreemarker/core/t;->e()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 5
    :goto_0
    invoke-virtual {v1, v2, v3}, Lfreemarker/core/z4;->class(Lfreemarker/core/b4;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lfreemarker/template/TemplateException;->do:Lfreemarker/core/z4;

    .line 7
    :cond_1
    iget-object v1, p0, Lfreemarker/template/TemplateException;->description:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/template/TemplateException;->for:Lfreemarker/core/h0;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    :cond_1
    return-void
.end method

.method private new()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit v0

    return-object v2

    .line 4
    :cond_1
    :goto_0
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 5
    array-length v1, v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 7
    iget-object v3, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Lfreemarker/core/y4;->const([Lfreemarker/core/b4;ZLjava/io/Writer;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_1
    iget-object v3, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 10
    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->if()V

    .line 12
    :cond_3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshotTop:Ljava/lang/String;

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private try()Lfreemarker/core/b4;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getFTLInstructionStack()Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->new()Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->for()Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 5
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getBlamedExpressionString()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public getBlamedExpression()Lfreemarker/core/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->for:Lfreemarker/core/h0;

    return-object v0
.end method

.method public getBlamedExpressionString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lfreemarker/template/TemplateException;->for:Lfreemarker/core/h0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionStringCalculated:Z

    .line 6
    :cond_1
    iget-object v1, p0, Lfreemarker/template/TemplateException;->blamedExpressionString:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCauseException()Ljava/lang/Exception;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapped to Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getColumnNumber()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->columnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEndColumnNumber()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->endColumnNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEndLineNumber()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->endLineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnvironment()Lfreemarker/core/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->if:Lfreemarker/core/d0;

    return-object v0
.end method

.method public getFTLInstructionStack()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    if-nez v1, :cond_1

    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 6
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7
    iget-object v3, p0, Lfreemarker/template/TemplateException;->new:[Lfreemarker/core/b4;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lfreemarker/core/y4;->const([Lfreemarker/core/b4;ZLjava/io/Writer;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 9
    iget-object v2, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->if()V

    .line 12
    :cond_2
    iget-object v1, p0, Lfreemarker/template/TemplateException;->renderedFtlInstructionStackSnapshot:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLineNumber()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->lineNumber:Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->goto:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const-string v0, "[... Exception message was already printed; see it above ...]"

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->case:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->else()V

    .line 5
    :cond_1
    iget-object v1, p0, Lfreemarker/template/TemplateException;->case:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessageWithoutStackTop()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lfreemarker/template/TemplateException;->else()V

    .line 3
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->try:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->templateName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTemplateSourceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/template/TemplateException;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lfreemarker/template/TemplateException;->positionsCalculated:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lfreemarker/template/TemplateException;->do()V

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/TemplateException;->templateSourceName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintStream;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;ZZZ)V
    .locals 1

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    new-instance v0, Lfreemarker/template/TemplateException$do;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$do;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->case(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Lfreemarker/template/TemplateException;->printStackTrace(Ljava/io/PrintWriter;ZZZ)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;ZZZ)V
    .locals 1

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    new-instance v0, Lfreemarker/template/TemplateException$if;

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateException$if;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lfreemarker/template/TemplateException;->case(Lfreemarker/template/TemplateException$StackTraceWriter;ZZZ)V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public printStandardStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStandardStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
