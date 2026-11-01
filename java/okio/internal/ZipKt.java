package okio.internal;

import android.support.v4.ab2;
import android.support.v4.bm1;
import android.support.v4.m41;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.on0;
import android.support.v4.qm;
import android.support.v4.ub2;
import android.support.v4.yr0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Cwhile;
import kotlin.collections.Cthrows;
import kotlin.comparisons.Cif;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.text.Cnew;
import kotlin.text.Creturn;
import kotlin.text.Cstatic;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a.\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000\u001a\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nH\u0002\u001a\f\u0010\u000f\u001a\u00020\u0005*\u00020\u000eH\u0000\u001a\f\u0010\u0011\u001a\u00020\u0010*\u00020\u000eH\u0002\u001a\u0014\u0010\u0013\u001a\u00020\u0010*\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u001a.\u0010\u001a\u001a\u00020\u0018*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0002\u001a\f\u0010\u001b\u001a\u00020\u0018*\u00020\u000eH\u0000\u001a\u0014\u0010\u001e\u001a\u00020\u001c*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0000\u001a\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c*\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u001a!\u0010\"\u001a\u0004\u0018\u00010\u00172\u0006\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\"\u0010#\"\u0016\u0010$\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010%\"\u0016\u0010&\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010%\"\u0016\u0010'\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010%\"\u0016\u0010(\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b(\u0010%\"\u0016\u0010)\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010%\"\u0016\u0010*\u001a\u00020\u00148\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b*\u0010%\"\u0016\u0010+\u001a\u00020\u00148\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b+\u0010%\"\u0016\u0010,\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010%\"\u0016\u0010-\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010%\"\u0016\u0010.\u001a\u00020\u00178\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010/\"\u0016\u00100\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010%\"\u0016\u00101\u001a\u00020\u00148\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010%\"\u001a\u00105\u001a\u000202*\u00020\u00148B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", "", "predicate", "Lokio/ZipFileSystem;", "openZip", "", "entries", "", "buildIndex", "Lokio/BufferedSource;", "readEntry", "Lokio/internal/EocdRecord;", "readEocdRecord", "regularRecord", "readZip64EocdRecord", "", "extraSize", "Lkotlin/Function2;", "", "Landroid/support/v4/ub2;", "block", "readExtra", "skipLocalHeader", "Lokio/FileMetadata;", "basicMetadata", "readLocalHeader", "readOrSkipLocalHeader", "date", "time", "dosDateTimeToEpochMillis", "(II)Ljava/lang/Long;", "LOCAL_FILE_HEADER_SIGNATURE", OptRuntime.GeneratorState.resumptionPoint_TYPE, "CENTRAL_FILE_HEADER_SIGNATURE", "END_OF_CENTRAL_DIRECTORY_SIGNATURE", "ZIP64_LOCATOR_SIGNATURE", "ZIP64_EOCD_RECORD_SIGNATURE", "COMPRESSION_METHOD_DEFLATED", "COMPRESSION_METHOD_STORED", "BIT_FLAG_ENCRYPTED", "BIT_FLAG_UNSUPPORTED_MASK", "MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE", "J", "HEADER_ID_ZIP64_EXTENDED_INFO", "HEADER_ID_EXTENDED_TIMESTAMP", "", "getHex", "(I)Ljava/lang/String;", "hex", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class ZipKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"}, d2 = {"Lokio/internal/ZipEntry;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.internal.ZipKt$openZip$1, reason: invalid class name */
    public static final class AnonymousClass1 extends yr0 implements Function1<ZipEntry, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m41
        public final Boolean invoke(@m41 ZipEntry it) {
            Csuper.m30700throw(it, "it");
            return Boolean.TRUE;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n"}, d2 = {"", "headerId", "", "dataSize", "Landroid/support/v4/ub2;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.internal.ZipKt$readEntry$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05801 extends yr0 implements Function2<Integer, Long, ub2> {
        public final /* synthetic */ bm1.Celse $compressedSize;
        public final /* synthetic */ bm1.Cdo $hasZip64Extra;
        public final /* synthetic */ bm1.Celse $offset;
        public final /* synthetic */ long $requiredZip64ExtraSize;
        public final /* synthetic */ bm1.Celse $size;
        public final /* synthetic */ BufferedSource $this_readEntry;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05801(bm1.Cdo cdo, long j, bm1.Celse celse, BufferedSource bufferedSource, bm1.Celse celse2, bm1.Celse celse3) {
            super(2);
            this.$hasZip64Extra = cdo;
            this.$requiredZip64ExtraSize = j;
            this.$size = celse;
            this.$this_readEntry = bufferedSource;
            this.$compressedSize = celse2;
            this.$offset = celse3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ ub2 invoke(Integer num, Long l) throws IOException {
            invoke(num.intValue(), l.longValue());
            return ub2.f6820do;
        }

        public final void invoke(int i, long j) throws IOException {
            if (i == 1) {
                bm1.Cdo cdo = this.$hasZip64Extra;
                if (cdo.element) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                cdo.element = true;
                if (j < this.$requiredZip64ExtraSize) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                bm1.Celse celse = this.$size;
                long longLe = celse.element;
                if (longLe == 4294967295L) {
                    longLe = this.$this_readEntry.readLongLe();
                }
                celse.element = longLe;
                bm1.Celse celse2 = this.$compressedSize;
                celse2.element = celse2.element == 4294967295L ? this.$this_readEntry.readLongLe() : 0L;
                bm1.Celse celse3 = this.$offset;
                celse3.element = celse3.element == 4294967295L ? this.$this_readEntry.readLongLe() : 0L;
            }
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n"}, d2 = {"", "headerId", "", "dataSize", "Landroid/support/v4/ub2;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.internal.ZipKt$readOrSkipLocalHeader$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05811 extends yr0 implements Function2<Integer, Long, ub2> {
        public final /* synthetic */ bm1.Cgoto<Long> $createdAtMillis;
        public final /* synthetic */ bm1.Cgoto<Long> $lastAccessedAtMillis;
        public final /* synthetic */ bm1.Cgoto<Long> $lastModifiedAtMillis;
        public final /* synthetic */ BufferedSource $this_readOrSkipLocalHeader;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05811(BufferedSource bufferedSource, bm1.Cgoto<Long> cgoto, bm1.Cgoto<Long> cgoto2, bm1.Cgoto<Long> cgoto3) {
            super(2);
            this.$this_readOrSkipLocalHeader = bufferedSource;
            this.$lastModifiedAtMillis = cgoto;
            this.$lastAccessedAtMillis = cgoto2;
            this.$createdAtMillis = cgoto3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ ub2 invoke(Integer num, Long l) throws IOException {
            invoke(num.intValue(), l.longValue());
            return ub2.f6820do;
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [T, java.lang.Long] */
        public final void invoke(int i, long j) throws IOException {
            if (i == ZipKt.HEADER_ID_EXTENDED_TIMESTAMP) {
                if (j < 1) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                int i2 = this.$this_readOrSkipLocalHeader.readByte() & 255;
                boolean z = (i2 & 1) == 1;
                boolean z2 = (i2 & 2) == 2;
                boolean z3 = (i2 & 4) == 4;
                BufferedSource bufferedSource = this.$this_readOrSkipLocalHeader;
                long j2 = z ? 5L : 1L;
                if (z2) {
                    j2 += 4;
                }
                if (z3) {
                    j2 += 4;
                }
                if (j < j2) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z) {
                    this.$lastModifiedAtMillis.element = Long.valueOf(bufferedSource.readIntLe() * 1000);
                }
                if (z2) {
                    this.$lastAccessedAtMillis.element = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                }
                if (z3) {
                    this.$createdAtMillis.element = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                }
            }
        }
    }

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ZipEntry zipEntry : Cthrows.u4(list, new Comparator() { // from class: okio.internal.ZipKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return Cif.m30315else(((ZipEntry) t).getCanonicalPath(), ((ZipEntry) t2).getCanonicalPath());
            }
        })) {
            if (((ZipEntry) linkedHashMap.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) linkedHashMap.get(pathParent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(pathParent, true, null, 0L, 0L, 0L, 0, null, 0L, TypedValues.Position.TYPE_CURVE_FIT, null);
                        linkedHashMap.put(pathParent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static final Long dosDateTimeToEpochMillis(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i >> 9) & 127) + 1980, ((i >> 5) & 15) - 1, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String getHex(int i) {
        String string = Integer.toString(i, Cnew.m31199do(16));
        Csuper.m30696super(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return Csuper.m30690private("0x", string);
    }

    @m41
    public static final ZipFileSystem openZip(@m41 Path zipPath, @m41 FileSystem fileSystem, @m41 Function1<? super ZipEntry, Boolean> predicate) throws IOException {
        BufferedSource bufferedSourceBuffer;
        Csuper.m30700throw(zipPath, "zipPath");
        Csuper.m30700throw(fileSystem, "fileSystem");
        Csuper.m30700throw(predicate, "predicate");
        FileHandle fileHandleOpenReadOnly = fileSystem.openReadOnly(zipPath);
        long j = 0;
        try {
            BufferedSource bufferedSourceBuffer2 = Okio.buffer(FileHandle.source$default(fileHandleOpenReadOnly, 0L, 1, null));
            try {
                int intLe = bufferedSourceBuffer2.readIntLe();
                if (intLe != LOCAL_FILE_HEADER_SIGNATURE) {
                    if (intLe == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        throw new IOException("unsupported zip: empty");
                    }
                    throw new IOException("not a zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
                }
                ub2 ub2Var = ub2.f6820do;
                qm.m6624do(bufferedSourceBuffer2, null);
                long size = fileHandleOpenReadOnly.size() - 22;
                if (size < 0) {
                    throw new IOException(Csuper.m30690private("not a zip: size=", Long.valueOf(fileHandleOpenReadOnly.size())));
                }
                long jMax = Math.max(size - PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, 0L);
                do {
                    BufferedSource bufferedSourceBuffer3 = Okio.buffer(fileHandleOpenReadOnly.source(size));
                    try {
                        if (bufferedSourceBuffer3.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                            EocdRecord eocdRecord = readEocdRecord(bufferedSourceBuffer3);
                            String utf8 = bufferedSourceBuffer3.readUtf8(eocdRecord.getCommentByteCount());
                            bufferedSourceBuffer3.close();
                            long j2 = size - 20;
                            if (j2 > 0) {
                                bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(j2));
                                try {
                                    if (bufferedSourceBuffer.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                        int intLe2 = bufferedSourceBuffer.readIntLe();
                                        long longLe = bufferedSourceBuffer.readLongLe();
                                        if (bufferedSourceBuffer.readIntLe() != 1 || intLe2 != 0) {
                                            throw new IOException("unsupported zip: spanned");
                                        }
                                        bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(longLe));
                                        try {
                                            int intLe3 = bufferedSourceBuffer.readIntLe();
                                            if (intLe3 != ZIP64_EOCD_RECORD_SIGNATURE) {
                                                throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(intLe3));
                                            }
                                            EocdRecord zip64EocdRecord = readZip64EocdRecord(bufferedSourceBuffer, eocdRecord);
                                            ub2 ub2Var2 = ub2.f6820do;
                                            qm.m6624do(bufferedSourceBuffer, null);
                                            eocdRecord = zip64EocdRecord;
                                        } finally {
                                        }
                                    }
                                    ub2 ub2Var3 = ub2.f6820do;
                                    qm.m6624do(bufferedSourceBuffer, null);
                                } finally {
                                }
                            }
                            ArrayList arrayList = new ArrayList();
                            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(eocdRecord.getCentralDirectoryOffset()));
                            try {
                                long entryCount = eocdRecord.getEntryCount();
                                if (0 < entryCount) {
                                    do {
                                        j++;
                                        ZipEntry entry = readEntry(bufferedSourceBuffer);
                                        if (entry.getOffset() >= eocdRecord.getCentralDirectoryOffset()) {
                                            throw new IOException("bad zip: local file header offset >= central directory offset");
                                        }
                                        if (predicate.invoke(entry).booleanValue()) {
                                            arrayList.add(entry);
                                        }
                                    } while (j < entryCount);
                                }
                                ub2 ub2Var4 = ub2.f6820do;
                                qm.m6624do(bufferedSourceBuffer, null);
                                ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), utf8);
                                qm.m6624do(fileHandleOpenReadOnly, null);
                                return zipFileSystem;
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                    qm.m6624do(bufferedSourceBuffer, th);
                                }
                            }
                        }
                        bufferedSourceBuffer3.close();
                        size--;
                    } catch (Throwable th) {
                        bufferedSourceBuffer3.close();
                        throw th;
                    }
                } while (size >= jMax);
                throw new IOException("not a zip: end of central directory signature not found");
            } finally {
                try {
                    throw th;
                } finally {
                    qm.m6624do(bufferedSourceBuffer2, th);
                }
            }
        } finally {
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            function1 = AnonymousClass1.INSTANCE;
        }
        return openZip(path, fileSystem, function1);
    }

    @m41
    public static final ZipEntry readEntry(@m41 BufferedSource bufferedSource) throws IOException {
        int i;
        Long l;
        long j;
        Csuper.m30700throw(bufferedSource, "<this>");
        int intLe = bufferedSource.readIntLe();
        if (intLe != CENTRAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(4L);
        int shortLe = bufferedSource.readShortLe() & ab2.f80for;
        if ((shortLe & 1) != 0) {
            throw new IOException(Csuper.m30690private("unsupported zip: general purpose bit flag=", getHex(shortLe)));
        }
        int shortLe2 = bufferedSource.readShortLe() & ab2.f80for;
        Long lDosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & ab2.f80for, bufferedSource.readShortLe() & ab2.f80for);
        long intLe2 = bufferedSource.readIntLe() & 4294967295L;
        bm1.Celse celse = new bm1.Celse();
        celse.element = bufferedSource.readIntLe() & 4294967295L;
        bm1.Celse celse2 = new bm1.Celse();
        celse2.element = bufferedSource.readIntLe() & 4294967295L;
        int shortLe3 = bufferedSource.readShortLe() & ab2.f80for;
        int shortLe4 = bufferedSource.readShortLe() & ab2.f80for;
        int shortLe5 = bufferedSource.readShortLe() & ab2.f80for;
        bufferedSource.skip(8L);
        bm1.Celse celse3 = new bm1.Celse();
        celse3.element = bufferedSource.readIntLe() & 4294967295L;
        String utf8 = bufferedSource.readUtf8(shortLe3);
        if (Cstatic.h2(utf8, (char) 0, false, 2, null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        if (celse2.element == 4294967295L) {
            j = 8 + 0;
            i = shortLe2;
            l = lDosDateTimeToEpochMillis;
        } else {
            i = shortLe2;
            l = lDosDateTimeToEpochMillis;
            j = 0;
        }
        if (celse.element == 4294967295L) {
            j += 8;
        }
        if (celse3.element == 4294967295L) {
            j += 8;
        }
        long j2 = j;
        bm1.Cdo cdo = new bm1.Cdo();
        readExtra(bufferedSource, shortLe4, new C05801(cdo, j2, celse2, bufferedSource, celse, celse3));
        if (j2 > 0 && !cdo.element) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        return new ZipEntry(Path.Companion.get$default(Path.Companion, on0.f4694final, false, 1, (Object) null).resolve(utf8), Creturn.W0(utf8, on0.f4694final, false, 2, null), bufferedSource.readUtf8(shortLe5), intLe2, celse.element, celse2.element, i, l, celse3.element);
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int shortLe = bufferedSource.readShortLe() & ab2.f80for;
        int shortLe2 = bufferedSource.readShortLe() & ab2.f80for;
        long shortLe3 = bufferedSource.readShortLe() & ab2.f80for;
        if (shortLe3 != (bufferedSource.readShortLe() & ab2.f80for) || shortLe != 0 || shortLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(4L);
        return new EocdRecord(shortLe3, 4294967295L & bufferedSource.readIntLe(), bufferedSource.readShortLe() & ab2.f80for);
    }

    private static final void readExtra(BufferedSource bufferedSource, int i, Function2<? super Integer, ? super Long, ub2> function2) throws IOException {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = bufferedSource.readShortLe() & ab2.f80for;
            long shortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j2 = j - 4;
            if (j2 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBuffer().size();
            function2.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBuffer().size() + shortLe2) - size;
            if (size2 < 0) {
                throw new IOException(Csuper.m30690private("unsupported zip: too many bytes processed for ", Integer.valueOf(shortLe)));
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j = j2 - shortLe2;
        }
    }

    @m41
    public static final FileMetadata readLocalHeader(@m41 BufferedSource bufferedSource, @m41 FileMetadata basicMetadata) throws IOException {
        Csuper.m30700throw(bufferedSource, "<this>");
        Csuper.m30700throw(basicMetadata, "basicMetadata");
        FileMetadata orSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, basicMetadata);
        Csuper.m30672const(orSkipLocalHeader);
        return orSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata readOrSkipLocalHeader(BufferedSource bufferedSource, FileMetadata fileMetadata) throws IOException {
        bm1.Cgoto cgoto = new bm1.Cgoto();
        cgoto.element = fileMetadata == null ? 0 : fileMetadata.getLastModifiedAtMillis();
        bm1.Cgoto cgoto2 = new bm1.Cgoto();
        bm1.Cgoto cgoto3 = new bm1.Cgoto();
        int intLe = bufferedSource.readIntLe();
        if (intLe != LOCAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(2L);
        int shortLe = bufferedSource.readShortLe() & ab2.f80for;
        if ((shortLe & 1) != 0) {
            throw new IOException(Csuper.m30690private("unsupported zip: general purpose bit flag=", getHex(shortLe)));
        }
        bufferedSource.skip(18L);
        long shortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int shortLe3 = bufferedSource.readShortLe() & ab2.f80for;
        bufferedSource.skip(shortLe2);
        if (fileMetadata == null) {
            bufferedSource.skip(shortLe3);
            return null;
        }
        readExtra(bufferedSource, shortLe3, new C05811(bufferedSource, cgoto, cgoto2, cgoto3));
        return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) cgoto3.element, (Long) cgoto.element, (Long) cgoto2.element, null, 128, null);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int intLe = bufferedSource.readIntLe();
        int intLe2 = bufferedSource.readIntLe();
        long longLe = bufferedSource.readLongLe();
        if (longLe != bufferedSource.readLongLe() || intLe != 0 || intLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(8L);
        return new EocdRecord(longLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
    }

    public static final void skipLocalHeader(@m41 BufferedSource bufferedSource) throws IOException {
        Csuper.m30700throw(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }
}
